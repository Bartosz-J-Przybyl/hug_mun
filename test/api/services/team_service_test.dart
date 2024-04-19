import 'dart:convert';

import 'package:fluent_assertions/fluent_assertions.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart';
import 'package:hug_mun/api/client.dart';
import 'package:hug_mun/api/model/response/channel_response.dart';
import 'package:hug_mun/api/services/team_service.dart';
import 'package:mocktail/mocktail.dart';

import '../web_test_utils.dart';

void main() async {
  setUpAll(() => registerFallbackValue(FakeUri()));

  await dotenv.load();
  final client = MockHttpClient();
  final teamService = TeamService(HugMunHttpClient(client));

  group(teamService, () {
    test("should get team public channels", () async {
      // given
      final model = _modelResponse();
      const teamId = "dj4p9fu4rpnspehpbgznywskbh";

      when(() => client.get(any(), headers: anyHeader()))
          .thenAnswer(((_) async => Response(jsonEncode(model), 200)));

      // when
      final channels = await teamService.getPublicChannels(teamId);

      // then
      channels.length.shouldBeEqualTo(5);

      verify(() => client.get(
            any(),
            headers: anyHeader(),
          )).called(1);
    });
  });
}

List<ChannelResponse> _modelResponse() =>
    List.generate(5, (index) => ChannelResponse(id: "$index"));
