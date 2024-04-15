class MattermostErrorResponse {
  String? id;
  String? message;
  String? requestId;
  int? statusCode;
  bool? isOauth;

  MattermostErrorResponse.fromJson(Map<String, dynamic> json) {
    id = json['id'] as String;
    message = json['message'] as String;
    requestId = json['request_id'] as String;
    statusCode = json['status_code'] as int;
    isOauth = json['is_oauth'] as bool?;
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'message': message,
      'request_id': requestId,
      'status_code': statusCode,
      'is_oauth': isOauth,
    };
  }
}
