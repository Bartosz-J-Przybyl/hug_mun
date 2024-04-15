import 'notify_props.dart';
import 'time_zone.dart';

class LoginModelResponse {
  String? id;
  int? createAt;
  int? updateAt;
  int? deleteAt;
  String? username;
  String? authData;
  String? authService;
  String? email;
  String? nickname;
  String? firstName;
  String? lastName;
  String? position;
  String? roles;
  NotifyProps? notifyProps;
  int? lastPasswordUpdate;
  String? locale;
  Timezone? timezone;
  bool? disableWelcomeEmail;

  LoginModelResponse();

  LoginModelResponse.fromJson(Map<String, dynamic> json) {
    final notifyPropsResponse =
        (json['notify_props']) as Map<String, dynamic>? ?? Map.identity();
    final timezoneResponse =
        (json['timezone']) as Map<String, dynamic>? ?? Map.identity();
    id = json['id'] as String?;
    createAt = json['create_at'] as int?;
    updateAt = json['update_at'] as int?;
    deleteAt = json['delete_at'] as int?;
    username = json['username'] as String;
    authData = json['auth_data'] as String?;
    authService = json['auth_service'] as String?;
    email = json['email'] as String?;
    nickname = json['nickname'] as String;
    firstName = json['first_name'] as String?;
    lastName = json['last_name'] as String?;
    position = json['position'] as String?;
    roles = json['roles'] as String?;
    notifyProps = NotifyProps.fromJson(notifyPropsResponse);
    lastPasswordUpdate = json['last_password_update'] as int?;
    locale = json['locale'] as String?;
    timezone = Timezone.fromJson(timezoneResponse);
    disableWelcomeEmail = json['disable_welcome_email'] as bool?;
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'create_at': createAt,
        'update_at': updateAt,
        'delete_at': deleteAt,
        'username': username,
        'auth_data': authData,
        'auth_service': authService,
        'email': email,
        'nickname': nickname,
        'first_name': firstName,
        'last_name': lastName,
        'position': position,
        'roles': roles,
        'notify_props': notifyProps?.toJson(),
        'last_password_update': lastPasswordUpdate,
        'locale': locale,
        'timezone': timezone?.toJson(),
        'disable_welcome_email': disableWelcomeEmail,
      };
}
