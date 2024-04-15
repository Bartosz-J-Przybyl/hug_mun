import 'dart:async';
import 'dart:convert';

import 'package:hug_mun/api/client.dart';
import 'package:hug_mun/api/mappers/user_response_mapper.dart';
import 'package:hug_mun/api/model/response/login_response_model.dart';
import 'package:hug_mun/api/model/response/user_me_response.dart';

class UserService {
  final HugMunHttpClient _httpClient;

  UserService(this._httpClient);

  Future<LoginModelResponse> login(String username, String password) async {
    final body = jsonEncode(<String, dynamic>{
      'login_id': username,
      'password': password,
    });
    return _httpClient.post(UserResponseMapper.login, "/users/login",
        body: body);
  }

  Future<UserMeResponse> me() async =>
      _httpClient.get(UserResponseMapper.userMe, "/users/me");
}
