import 'package:hug_mun/api/model/response/login_response_model.dart';
import 'package:hug_mun/api/model/response/user_me_response.dart';

class UserResponseMapper {
  static LoginModelResponse login(Map<String, dynamic> json) =>
      LoginModelResponse.fromJson(json);

  static UserMeResponse me(Map<String, dynamic> json) =>
      UserMeResponse.fromJson(json);

  static List<String> known(List<dynamic> json) =>
      json.map((it) => it as String).toList();
}
