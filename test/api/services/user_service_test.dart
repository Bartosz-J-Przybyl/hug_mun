import 'dart:convert';

import 'package:fluent_assertions/fluent_assertions.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart';
import 'package:hug_mun/api/client.dart';
import 'package:hug_mun/api/model/response/login_response_model.dart';
import 'package:hug_mun/api/model/response/team_response.dart';
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
              body: body, headers: anyHeader(), encoding: anyEncoding()))
          .thenAnswer(((_) async => Response(jsonEncode(model), 200)));

      // when
      final login = await userService.login(
        _userName,
        _password,
      );

      // then
      login.username.shouldBeEqualTo(_userName);
      login.email.shouldBeEqualTo(_email);
      login.nickname.shouldBeEqualTo(_nickName);

      verify(() => client.post(any(),
          body: body, headers: anyHeader(), encoding: anyEncoding())).called(1);
    });

    test("should get known users", () async {
      // given
      final response = [
        "6bqk6qowc7ycurpmoed5rnmhqh",
        "8q1pizjr5jrfdmdueeqxizraeo",
        "kg5oe9czstrm9r88p5fdjjjt9o",
        "43bjnuqp7bg9uqjbg7b73wh7ma",
        "dym5ic4mrbnf8php989w3866he"
      ];

      when(() => client.get(
            any(),
            headers: anyHeader(),
          )).thenAnswer(((_) async => Response(jsonEncode(response), 200)));

      // when
      final knownUsers = await userService.known();

      // then
      knownUsers.length.shouldBeEqualTo(response.length);
      knownUsers[0].shouldBeEqualTo(response[0]);
      knownUsers[1].shouldBeEqualTo(response[1]);
      knownUsers[2].shouldBeEqualTo(response[2]);
      knownUsers[3].shouldBeEqualTo(response[3]);

      verify(() => client.get(
            any(),
            headers: anyHeader(),
          )).called(1);
    });

    test("should get user team", () async {
      // given
      final response = [_modelTeamResponse()];

      when(() => client.get(
            any(),
            headers: anyHeader(),
          )).thenAnswer(((_) async => Response(jsonEncode(response), 200)));

      // when
      final teams = await userService.team("6bqk6qowc7ycurpmoed5rnmhqh");

      // then
      teams.length.shouldBeEqualTo(response.length);
      final teamFirst = response[0];
      teams[0].id.shouldBeEqualTo(teamFirst.id!);
      teams[0].createAt.shouldBeEqualTo(teamFirst.createAt!);
      teams[0].updateAt.shouldBeEqualTo(teamFirst.updateAt!);
      teams[0].deleteAt.shouldBeEqualTo(teamFirst.deleteAt!);
      teams[0].displayName.shouldBeEqualTo(teamFirst.displayName!);
      teams[0].name.shouldBeEqualTo(teamFirst.name!);
      teams[0].description.shouldBeEqualTo(teamFirst.description!);
      teams[0].email.shouldBeEqualTo(teamFirst.email!);
      teams[0].type.shouldBeEqualTo(teamFirst.type!);
      teams[0].companyName.shouldBeEqualTo(teamFirst.companyName!);
      teams[0].allowedDomains.shouldBeEqualTo(teamFirst.allowedDomains!);
      teams[0].inviteId.shouldBeEqualTo(teamFirst.inviteId!);
      teams[0].allowOpenInvite.shouldBeEqualTo(teamFirst.allowOpenInvite!);
      teams[0].schemeId.shouldBeEqualTo(teamFirst.schemeId!);
      teams[0].groupConstrained.shouldBeEqualTo(teamFirst.groupConstrained!);
      teams[0]
          .cloudLimitsArchived
          .shouldBeEqualTo(teamFirst.cloudLimitsArchived!);

      verify(() => client.get(
            any(),
            headers: anyHeader(),
          )).called(1);
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

TeamResponse _modelTeamResponse() => TeamResponse(
    id: "dj4p9fu4rpnspehpbgznywskbh",
    createAt: 1695306008859,
    updateAt: 1695306008850,
    deleteAt: 0,
    displayName: "test",
    name: "test",
    description: "description",
    email: "",
    type: "O",
    companyName: "test company",
    allowedDomains: "",
    inviteId: "ywkjm66np7rude3faqk97szj6h",
    allowOpenInvite: false,
    schemeId: "",
    groupConstrained: false,
    cloudLimitsArchived: false);
