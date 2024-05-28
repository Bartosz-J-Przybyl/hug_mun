import 'package:hug_mun/api/model/response/team_channel_response.dart';

class TeamChannelResponseMapper {
  static TeamChannelResponse teamChannel(Map<String, dynamic> json) =>
      TeamChannelResponse.fromJson(json);

  static List<TeamChannelResponse> teamChannels(List<dynamic> json) => json
      .map((element) => element as Map<String, dynamic>)
      .map(teamChannel)
      .toList();
}
