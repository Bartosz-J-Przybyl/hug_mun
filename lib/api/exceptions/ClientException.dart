import 'package:hug_mun/api/model/response/MattermostErrorResponse.dart';

class ClientException implements Exception {
  final String? id;
  final String? message;
  final String? request_id;
  final int? status_code;
  final bool? is_oauth;

  ClientException(
      this.id, this.message, this.request_id, this.status_code, this.is_oauth);

  static from(MattermostErrorResponse response) {
    ClientException(response.id, response.message, response.request_id,
        response.status_code, response.is_oauth);
  }
}
