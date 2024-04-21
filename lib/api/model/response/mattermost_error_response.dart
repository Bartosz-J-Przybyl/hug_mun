import 'package:equatable/equatable.dart';

class MattermostErrorResponse extends Equatable {
  const MattermostErrorResponse({
    required this.id,
    required this.message,
    required this.requestId,
    required this.statusCode,
    required this.isOAuth,
  });

  final String? id;
  static const String idKey = "id";

  final String? message;
  static const String messageKey = "message";

  final String? requestId;
  static const String requestIdKey = "request_id";

  final int? statusCode;
  static const String statusCodeKey = "status_code";

  final bool? isOAuth;
  static const String isOauthKey = "is_oauth";

  MattermostErrorResponse copyWith({
    String? id,
    String? message,
    String? requestId,
    int? statusCode,
    bool? isOauth,
  }) =>
      MattermostErrorResponse(
        id: id ?? this.id,
        message: message ?? this.message,
        requestId: requestId ?? this.requestId,
        statusCode: statusCode ?? this.statusCode,
        isOAuth: isOauth ?? this.isOAuth,
      );

  factory MattermostErrorResponse.fromJson(Map<String, dynamic> json) =>
      MattermostErrorResponse(
        id: json["id"],
        message: json["message"],
        requestId: json["request_id"],
        statusCode: json["status_code"],
        isOAuth: json["is_oauth"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "message": message,
        "request_id": requestId,
        "status_code": statusCode,
        "is_oauth": isOAuth,
      };

  @override
  String toString() => "$id, $message, $requestId, $statusCode, $isOAuth, ";

  @override
  List<Object?> get props => [
        id,
        message,
        requestId,
        statusCode,
        isOAuth,
      ];
}
