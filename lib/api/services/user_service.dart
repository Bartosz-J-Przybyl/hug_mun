import 'dart:async';
import 'dart:convert';

import 'package:hug_mun/api/client.dart';
import 'package:hug_mun/api/mappers/team_channel_response_mapper.dart';
import 'package:hug_mun/api/mappers/team_member_response_mapper.dart';
import 'package:hug_mun/api/mappers/team_response_mapper.dart';
import 'package:hug_mun/api/mappers/user_response_mapper.dart';
import 'package:hug_mun/api/model/response/User_channel_member_response.dart';
import 'package:hug_mun/api/model/response/login_response_model.dart';
import 'package:hug_mun/api/model/response/team_channel_response.dart';
import 'package:hug_mun/api/model/response/team_member_response.dart';
import 'package:hug_mun/api/model/response/team_response.dart';
import 'package:hug_mun/api/model/response/user_channel_category_response.dart';
import 'package:hug_mun/api/model/response/user_me_response.dart';
import 'package:hug_mun/api/model/response/user_model_response.dart';
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

  /// ## Query Parameters:
  /// - int since: Only return users that have been modified since the given
  ///   Unix timestamp (in milliseconds).
  Future<List<UserModelResponse>> userByIds(List<String> ids) async =>
      _httpClient.post(UserResponseMapper.users, "$baseUrl/ids",
          body: jsonEncode(ids));

  Future<List<TeamResponse>> myTeams() =>
      _httpClient.get(TeamResponseMapper.teams, "$baseUrl/me/teams");

  Future<List<TeamMemberResponse>> myTeamsMembers() => _httpClient.get(
      TeamMemberResponseMapper.teamsMembers, "$baseUrl/me/teams");

  Future<List<TeamChannelResponse>> myTeamsChannels() => _httpClient.get(
      TeamChannelResponseMapper.teamChannels, "$baseUrl/me/channels");

  Future<List<UserChannelMemberResponse>> channelsMembers(String channelId) =>
      _httpClient.get(UserResponseMapper.channelMembers,
          "$baseUrl/$channelId/channel_members",
          parameters: {"page": "0", "per_page": "200"});

  Future<List<UserChannelCategoryResponse>> userChannelCategories(
          String userId, String teamId) =>
      _httpClient.get(UserResponseMapper.userChannelCategories,
          "$baseUrl/$userId/teams/$teamId/channels/categories");
}
