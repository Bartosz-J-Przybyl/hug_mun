import 'package:hug_mun/api/model/response/login_response_model.dart';
import 'package:hug_mun/api/model/response/user_me_response.dart';

class UserResponseMapper {
  static LoginModelResponse login(Map<String, dynamic> json) =>
      LoginModelResponse.fromJson(json);

  static UserMeResponse userMe(Map<String, dynamic> json) =>
      UserMeResponse.fromJson(json);
}
