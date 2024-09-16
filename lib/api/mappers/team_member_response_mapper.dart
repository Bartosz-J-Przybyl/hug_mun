import 'package:hug_mun/api/model/response/team_member_response.dart';

class TeamMemberResponseMapper {
  static TeamMemberResponse teamMember(Map<String, dynamic> json) =>
      TeamMemberResponse.fromJson(json);

  static List<TeamMemberResponse> teamsMembers(List<dynamic> json) => json
      .map((element) => element as Map<String, dynamic>)
      .map(teamMember)
      .toList();
}
