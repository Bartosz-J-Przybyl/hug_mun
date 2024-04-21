import 'package:equatable/equatable.dart';
import 'package:hug_mun/api/model/response/notify_props.dart';
import 'package:hug_mun/api/model/response/time_zone.dart';

class LoginModelResponse extends Equatable {
  const LoginModelResponse({
    required this.id,
    required this.createAt,
    required this.updateAt,
    required this.deleteAt,
    required this.username,
    required this.authData,
    required this.authService,
    required this.email,
    required this.nickname,
    required this.firstName,
    required this.lastName,
    required this.position,
    required this.roles,
    required this.notifyProps,
    required this.lastPasswordUpdate,
    required this.lastPictureUpdate,
    required this.locale,
    required this.timezone,
    required this.disableWelcomeEmail,
  });

  final String? id;
  static const String idKey = "id";

  final int? createAt;
  static const String createAtKey = "create_at";

  final int? updateAt;
  static const String updateAtKey = "update_at";

  final int? deleteAt;
  static const String deleteAtKey = "delete_at";

  final String? username;
  static const String usernameKey = "username";

  final String? authData;
  static const String authDataKey = "auth_data";

  final String? authService;
  static const String authServiceKey = "auth_service";

  final String? email;
  static const String emailKey = "email";

  final String? nickname;
  static const String nicknameKey = "nickname";

  final String? firstName;
  static const String firstNameKey = "first_name";

  final String? lastName;
  static const String lastNameKey = "last_name";

  final String? position;
  static const String positionKey = "position";

  final String? roles;
  static const String rolesKey = "roles";

  final NotifyProps? notifyProps;
  static const String notifyPropsKey = "notify_props";

  final int? lastPasswordUpdate;
  static const String lastPasswordUpdateKey = "last_password_update";

  final int? lastPictureUpdate;
  static const String lastPictureUpdateKey = "last_picture_update";

  final String? locale;
  static const String localeKey = "locale";

  final Timezone? timezone;
  static const String timezoneKey = "timezone";

  final bool? disableWelcomeEmail;
  static const String disableWelcomeEmailKey = "disable_welcome_email";

  LoginModelResponse copyWith({
    String? id,
    int? createAt,
    int? updateAt,
    int? deleteAt,
    String? username,
    String? authData,
    String? authService,
    String? email,
    String? nickname,
    String? firstName,
    String? lastName,
    String? position,
    String? roles,
    NotifyProps? notifyProps,
    int? lastPasswordUpdate,
    int? lastPictureUpdate,
    String? locale,
    Timezone? timezone,
    bool? disableWelcomeEmail,
  }) {
    return LoginModelResponse(
      id: id ?? this.id,
      createAt: createAt ?? this.createAt,
      updateAt: updateAt ?? this.updateAt,
      deleteAt: deleteAt ?? this.deleteAt,
      username: username ?? this.username,
      authData: authData ?? this.authData,
      authService: authService ?? this.authService,
      email: email ?? this.email,
      nickname: nickname ?? this.nickname,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      position: position ?? this.position,
      roles: roles ?? this.roles,
      notifyProps: notifyProps ?? this.notifyProps,
      lastPasswordUpdate: lastPasswordUpdate ?? this.lastPasswordUpdate,
      lastPictureUpdate: lastPictureUpdate ?? this.lastPictureUpdate,
      locale: locale ?? this.locale,
      timezone: timezone ?? this.timezone,
      disableWelcomeEmail: disableWelcomeEmail ?? this.disableWelcomeEmail,
    );
  }

  factory LoginModelResponse.fromJson(Map<String, dynamic> json) {
    return LoginModelResponse(
      id: json["id"],
      createAt: json["create_at"],
      updateAt: json["update_at"],
      deleteAt: json["delete_at"],
      username: json["username"],
      authData: json["auth_data"],
      authService: json["auth_service"],
      email: json["email"],
      nickname: json["nickname"],
      firstName: json["first_name"],
      lastName: json["last_name"],
      position: json["position"],
      roles: json["roles"],
      notifyProps: json["notify_props"] == null
          ? null
          : NotifyProps.fromJson(json["notify_props"]),
      lastPasswordUpdate: json["last_password_update"],
      lastPictureUpdate: json["last_picture_update"],
      locale: json["locale"],
      timezone:
          json["timezone"] == null ? null : Timezone.fromJson(json["timezone"]),
      disableWelcomeEmail: json["disable_welcome_email"],
    );
  }

  Map<String, dynamic> toJson() => {
        "id": id,
        "create_at": createAt,
        "update_at": updateAt,
        "delete_at": deleteAt,
        "username": username,
        "auth_data": authData,
        "auth_service": authService,
        "email": email,
        "nickname": nickname,
        "first_name": firstName,
        "last_name": lastName,
        "position": position,
        "roles": roles,
        "notify_props": notifyProps?.toJson(),
        "last_password_update": lastPasswordUpdate,
        "last_picture_update": lastPictureUpdate,
        "locale": locale,
        "timezone": timezone?.toJson(),
        "disable_welcome_email": disableWelcomeEmail,
      };

  @override
  String toString() {
    return "$id, $createAt, $updateAt, $deleteAt, $username, $authData, $authService, $email, $nickname, $firstName, $lastName, $position, $roles, $props, $notifyProps, $lastPasswordUpdate, $lastPictureUpdate, $locale, $timezone, $disableWelcomeEmail, ";
  }

  @override
  List<Object?> get props => [
        id,
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
        props,
        notifyProps,
        lastPasswordUpdate,
        lastPictureUpdate,
        locale,
        timezone,
        disableWelcomeEmail,
      ];
}
