import 'package:hug_mun/api/client.dart';
import 'package:hug_mun/api/mappers/channel_response_mapper.dart';
import 'package:hug_mun/api/model/response/channel_response.dart';
import 'package:hug_mun/api/services/rest_service.dart';

class TeamService extends RestService {
  final HugMunHttpClient _httpClient;

  TeamService(this._httpClient)
      : super(httpClient: _httpClient, baseUrl: '/teams');

  Future<List<ChannelResponse>> getPublicChannels(String teamId) async =>
      _httpClient.get(
          ChannelResponseMapper.channels, "$baseUrl/$teamId/channels",
          parameters: {
            "page": "0",
            "per_page": "0",
          });
}
