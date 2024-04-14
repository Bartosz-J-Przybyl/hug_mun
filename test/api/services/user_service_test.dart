import 'dart:convert';

import 'package:fluent_assertions/fluent_assertions.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart';
import 'package:hug_mun/api/client.dart';
import 'package:hug_mun/api/model/response/LoginResponseModel.dart';
import 'package:hug_mun/api/services/user_service.dart';
import 'package:mocktail/mocktail.dart';

class MockHttpClient extends Mock implements Client {}

class FakeUri extends Fake implements Uri {}

const _NICKNAME = "test";
const _USERNAME = "user_test";
const _PASSWORD = "test123!";
const _EMAIL = "test@test.pl";

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
        'login_id': _USERNAME,
        'password': _PASSWORD,
      });
      when(() => client.post(any(),
              body: body,
              headers: any(named: 'headers'),
              encoding: any(named: 'encoding')))
          .thenAnswer(((_) async => Response(jsonEncode(model), 200)));

      // when
      final login = await userService.login(_USERNAME, _PASSWORD);

      // then
      login.username.shouldBeEqualTo(_USERNAME);
      login.email.shouldBeEqualTo(_EMAIL);
      login.nickname.shouldBeEqualTo(_NICKNAME);

      verify(() => client.post(any(),
          body: body,
          headers: any(named: 'headers'),
          encoding: any(named: 'encoding'))).called(1);
    });
  });
}

LoginModelResponse _modelResponse() {
  final model = LoginModelResponse();
  model.username = _USERNAME;
  model.email = _EMAIL;
  model.nickname = _NICKNAME;
  return model;
}
