import 'package:hug_mun/api/model/response/mattermost_error_response.dart';

class ClientException implements Exception {
  final String? id;
  final String? message;
  final String? requestId;
  final int? statusCode;
  final bool? isOAuth;

  ClientException(
    this.id,
    this.message,
    this.requestId,
    this.statusCode,
    this.isOAuth,
  );

  static from(MattermostErrorResponse response) {
    ClientException(response.id, response.message, response.requestId,
        response.statusCode, response.isOAuth);
  }

  MattermostErrorResponse toResponse() => MattermostErrorResponse(
      id: id,
      message: message,
      requestId: requestId,
      statusCode: statusCode,
      isOAuth: isOAuth);
}
