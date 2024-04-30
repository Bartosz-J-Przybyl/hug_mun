import 'package:hug_mun/api/model/response/User_channel_member_response.dart';
import 'package:hug_mun/api/model/response/login_response_model.dart';
import 'package:hug_mun/api/model/response/user_channel_category_response.dart';
import 'package:hug_mun/api/model/response/user_me_response.dart';
import 'package:hug_mun/api/model/response/user_model_response.dart';

class UserResponseMapper {
  static UserModelResponse user(Map<String, dynamic> json) =>
      UserModelResponse.fromJson(json);

  static List<UserModelResponse> users(List<dynamic> json) =>
      json.map((it) => it as Map<String, dynamic>).map(user).toList();

  static LoginModelResponse login(Map<String, dynamic> json) =>
      LoginModelResponse.fromJson(json);

  static UserMeResponse me(Map<String, dynamic> json) =>
      UserMeResponse.fromJson(json);

  static List<String> known(List<dynamic> json) =>
      json.map((it) => it as String).toList();

  static UserChannelMemberResponse channelMember(Map<String, dynamic> json) =>
      UserChannelMemberResponse.fromJson(json);

  static List<UserChannelMemberResponse> channelMembers(List<dynamic> json) =>
      json.map((it) => it as Map<String, dynamic>).map(channelMember).toList();

  static UserChannelCategoryResponse userChannelCategory(
          Map<String, dynamic> json) =>
      UserChannelCategoryResponse.fromJson(json);

  static List<UserChannelCategoryResponse> userChannelCategories(
          List<dynamic> json) =>
      json
          .map((it) => it as Map<String, dynamic>)
          .map(userChannelCategory)
          .toList();
}
