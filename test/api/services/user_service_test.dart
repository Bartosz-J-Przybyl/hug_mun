import 'dart:convert';

import 'package:fluent_assertions/fluent_assertions.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart';
import 'package:hug_mun/api/client.dart';
import 'package:hug_mun/api/model/response/login_response_model.dart';
import 'package:hug_mun/api/services/user_service.dart';
import 'package:mocktail/mocktail.dart';

import '../web_test_utils.dart';

const _nickName = "test";
const _userName = "user_test";
const _password = "test123!";
const _email = "test@test.pl";

void main() async {
  setUpAll(() => registerFallbackValue(FakeUri()));

  await dotenv.load();
  final client = MockHttpClient();
  final userService = UserService(HugMunHttpClient(client));

  group(userService, () {
    test("should log in user", () async {
      // given
      final model = _modelResponse();
      final body = jsonEncode({
        'login_id': _userName,
        'password': _password,
      });
      when(() => client.post(any(),
              body: body,
              headers: any(named: 'headers'),
              encoding: any(named: 'encoding')))
          .thenAnswer(((_) async => Response(jsonEncode(model), 200)));

      // when
      final login = await userService.login(_userName, _password,);

      // then
      login.username.shouldBeEqualTo(_userName);
      login.email.shouldBeEqualTo(_email);
      login.nickname.shouldBeEqualTo(_nickName);

      verify(() => client.post(any(),
          body: body,
          headers: any(named: 'headers'),
          encoding: any(named: 'encoding'))).called(1);
    });
  });
}

LoginModelResponse _modelResponse() {
  final model = LoginModelResponse();
  model.username = _userName;
  model.email = _email;
  model.nickname = _nickName;
  return model;
}
