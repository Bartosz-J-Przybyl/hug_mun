import 'package:hug_mun/api/model/response/LoginResponseModel.dart';
import 'package:hug_mun/api/model/response/UserMeResponse.dart';

class UserResponseMapper {
  static LoginModelResponse login(Map<String, dynamic> json) =>
      LoginModelResponse.fromJson(json);

  static UserMeResponse userMe(Map<String, dynamic> json) =>
      UserMeResponse.fromJson(json);
}
