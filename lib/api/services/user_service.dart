import 'dart:async';
import 'dart:convert';

import 'package:hug_mun/api/client.dart';
import 'package:hug_mun/api/mappers/team_response_mapper.dart';
import 'package:hug_mun/api/mappers/user_response_mapper.dart';
import 'package:hug_mun/api/model/response/login_response_model.dart';
import 'package:hug_mun/api/model/response/team_response.dart';
import 'package:hug_mun/api/model/response/user_me_response.dart';
import 'package:hug_mun/api/services/rest_service.dart';

class UserService extends RestService {
  final HugMunHttpClient _httpClient;

  UserService(this._httpClient)
      : super(httpClient: _httpClient, baseUrl: '/users');

  Future<LoginModelResponse> login(String username, String password) async =>
      _httpClient.post(UserResponseMapper.login, "$baseUrl/login",
          body: jsonEncode(<String, dynamic>{
            'login_id': username,
            'password': password,
          }));

  Future<UserMeResponse> me() async =>
      _httpClient.get(UserResponseMapper.me, "$baseUrl/me");

  Future<List<String>> known() async =>
      _httpClient.get(UserResponseMapper.known, "$baseUrl/known");

  Future<List<TeamResponse>> team(String userId) async =>
      _httpClient.get(TeamResponseMapper.teams, "$baseUrl/$userId/team");
}
