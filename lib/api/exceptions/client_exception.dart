import 'package:hug_mun/api/model/response/mattermost_error_response.dart';

class ClientException implements Exception {
  final String? id;
  final String? message;
  final String? requestId;
  final int? statusCode;
  final bool? isOauth;

  ClientException(
    this.id,
    this.message,
    this.requestId,
    this.statusCode,
    this.isOauth,
  );

  static from(MattermostErrorResponse response) {
    ClientException(response.id, response.message, response.requestId,
        response.statusCode, response.isOauth);
  }
}
