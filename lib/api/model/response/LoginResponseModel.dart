import 'NotifyProps.dart';
import 'Timezone.dart';

class LoginModelResponse {
  String? id;
  int? create_at;
  int? update_at;
  int? delete_at;
  String? username;
  String? auth_data;
  String? auth_service;
  String? email;
  String? nickname;
  String? first_name;
  String? last_name;
  String? position;
  String? roles;
  NotifyProps? notify_props;
  int? last_password_update;
  String? locale;
  Timezone? timezone;
  bool? disable_welcome_email;

  LoginModelResponse();

  LoginModelResponse.fromJson(Map<String, dynamic> json) {
    final notifyPropsResponse =
        (json['notify_props']) as Map<String, dynamic>? ?? Map.identity();
    final timezoneResponse =
        (json['timezone']) as Map<String, dynamic>? ?? Map.identity();
    id = json['id'] as String?;
    create_at = json['create_at'] as int?;
    update_at = json['update_at'] as int?;
    delete_at = json['delete_at'] as int?;
    username = json['username'] as String;
    auth_data = json['auth_data'] as String?;
    auth_service = json['auth_service'] as String?;
    email = json['email'] as String?;
    nickname = json['nickname'] as String;
    first_name = json['first_name'] as String?;
    last_name = json['last_name'] as String?;
    position = json['position'] as String?;
    roles = json['roles'] as String?;
    notify_props = NotifyProps.fromJson(notifyPropsResponse);
    last_password_update = json['last_password_update'] as int?;
    locale = json['locale'] as String?;
    timezone = Timezone.fromJson(timezoneResponse);
    disable_welcome_email = json['disable_welcome_email'] as bool?;
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'create_at': create_at,
        'update_at': update_at,
        'delete_at': delete_at,
        'username': username,
        'auth_data': auth_data,
        'auth_service': auth_service,
        'email': email,
        'nickname': nickname,
        'first_name': first_name,
        'last_name': last_name,
        'position': position,
        'roles': roles,
        'notify_props': notify_props?.toJson(),
        'last_password_update': last_password_update,
        'locale': locale,
        'timezone': timezone?.toJson(),
        'disable_welcome_email': disable_welcome_email,
      };
}
