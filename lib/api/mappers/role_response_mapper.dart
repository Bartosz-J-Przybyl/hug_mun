import 'package:hug_mun/api/model/response/role_name_response.dart';

class RoleResponseMapper {
  static RoleNameResponse roleName(Map<String, dynamic> json) =>
      RoleNameResponse.fromJson(json);

  static List<RoleNameResponse> rolesNames(List<dynamic> json) => json
      .map((element) => element as Map<String, dynamic>)
      .map(roleName)
      .toList();
}
