import 'dart:convert';

import 'package:fluent_assertions/fluent_assertions.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart';
import 'package:hug_mun/api/client.dart';
import 'package:hug_mun/api/model/response/channel_response.dart';
import 'package:hug_mun/api/services/channel_service.dart';
import 'package:mocktail/mocktail.dart';

import '../web_test_utils.dart';

void main() async {
  setUpAll(() => registerFallbackValue(FakeUri()));

  await dotenv.load();
  final client = MockHttpClient();
  final channelService = ChannelService(HugMunHttpClient(client));

  group(channelService, () {
    test("should get all channels", () async {
      // given
      final model = _modelResponse();
      when(() => client.get(any(), headers: any(named: 'headers')))
          .thenAnswer(((_) async => Response(jsonEncode(model), 200)));

      // when
      final channels = await channelService.getChannels();

      // then
      channels.length.shouldBeEqualTo(5);

      verify(() => client.get(
            any(),
            headers: any(named: 'headers'),
          )).called(1);
    });
  });
}

List<ChannelResponse> _modelResponse() =>
    List.generate(5, (index) => ChannelResponse(id: "$index"));
