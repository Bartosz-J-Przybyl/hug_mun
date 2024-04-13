class MattermostErrorResponse {
  String? id;
  String? message;
  String? request_id;
  int? status_code;
  bool? is_oauth;

  MattermostErrorResponse.fromJson(Map<String, dynamic> json) {
    id = json['id'] as String;
    message = json['message'] as String;
    request_id = json['request_id'] as String;
    status_code = json['status_code'] as int;
    is_oauth = json['is_oauth'] as bool?;
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'message': message,
      'request_id': request_id,
      'status_code': status_code,
      'is_oauth': is_oauth,
    };
  }
}
