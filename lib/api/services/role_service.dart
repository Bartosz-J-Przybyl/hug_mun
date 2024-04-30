import 'dart:async';
import 'dart:convert';

import 'package:hug_mun/api/client.dart';
import 'package:hug_mun/api/mappers/role_response_mapper.dart';
import 'package:hug_mun/api/model/response/role_name_response.dart';
import 'package:hug_mun/api/services/rest_service.dart';

class RoleService extends RestService {
  final HugMunHttpClient _httpClient;

  RoleService(this._httpClient)
      : super(httpClient: _httpClient, baseUrl: '/roles');

  Future<List<RoleNameResponse>> names(List<String> roles) async =>
      _httpClient.post(RoleResponseMapper.rolesNames, "$baseUrl/names",
          body: jsonEncode(roles));
}
