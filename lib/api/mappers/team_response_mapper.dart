import 'package:hug_mun/api/model/response/team_response.dart';

class TeamResponseMapper {
  static TeamResponse team(Map<String, dynamic> json) =>
      TeamResponse.fromJson(json);

  static List<TeamResponse> teams(List<dynamic> json) =>
      json.map((element) => element as Map<String, dynamic>).map(team).toList();
}
