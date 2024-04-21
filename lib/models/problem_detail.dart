import 'package:hug_mun/api/exceptions/client_exception.dart';

class Error {
  final String? id;
  final String? message;
  final String? requestId;
  final int? statusCode;
  final bool? isOAuth;

  const Error(
      {required this.id,
      required this.message,
      required this.requestId,
      required this.statusCode,
      required this.isOAuth});

  static const empty = Error(
      id: null,
      message: null,
      requestId: null,
      statusCode: null,
      isOAuth: null);

  static Error from(ClientException response) => Error(
      id: response.id,
      message: response.message,
      requestId: response.requestId,
      statusCode: response.statusCode,
      isOAuth: response.isOAuth);
}
