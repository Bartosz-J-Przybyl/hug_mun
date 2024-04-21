import 'package:hug_mun/api/model/response/notify_props.dart';
import 'package:hug_mun/api/model/response/time_zone.dart';

class UserMeResponse {
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

  UserMeResponse(
      {id,
      createAt,
      updateAt,
      deleteAt,
      username,
      authData,
      authService,
      email,
      nickname,
      firstName,
      lastName,
      position,
      roles,
      notifyProps,
      lastPasswordUpdate,
      locale,
      timezone,
      disableWelcomeEmail});

  UserMeResponse.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    createAt = json['create_at'];
    updateAt = json['update_at'];
    deleteAt = json['delete_at'];
    username = json['username'];
    authData = json['auth_data'];
    authService = json['auth_service'];
    email = json['email'];
    nickname = json['nickname'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    position = json['position'];
    roles = json['roles'];
    notifyProps = json['notify_props'] != null
        ? NotifyProps.fromJson(json['notify_props'])
        : null;
    lastPasswordUpdate = json['last_password_update'];
    locale = json['locale'];
    timezone =
        json['timezone'] != null ? Timezone.fromJson(json['timezone']) : null;
    disableWelcomeEmail = json['disable_welcome_email'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['create_at'] = createAt;
    data['update_at'] = updateAt;
    data['delete_at'] = deleteAt;
    data['username'] = username;
    data['auth_data'] = authData;
    data['auth_service'] = authService;
    data['email'] = email;
    data['nickname'] = nickname;
    data['first_name'] = firstName;
    data['last_name'] = lastName;
    data['position'] = position;
    data['roles'] = roles;
    if (notifyProps != null) {
      data['notify_props'] = notifyProps!.toJson();
    }
    data['last_password_update'] = lastPasswordUpdate;
    data['locale'] = locale;
    if (timezone != null) {
      data['timezone'] = timezone!.toJson();
    }
    data['disable_welcome_email'] = disableWelcomeEmail;
    return data;
  }
}
