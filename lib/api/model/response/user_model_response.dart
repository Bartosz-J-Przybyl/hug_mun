import 'package:equatable/equatable.dart';
import 'package:hug_mun/api/model/response/time_zone.dart';

import 'notify_props.dart';

class UserModelResponse extends Equatable {
  const UserModelResponse({
    required this.id,
    required this.createAt,
    required this.updateAt,
    required this.deleteAt,
    required this.username,
    required this.firstName,
    required this.lastName,
    required this.nickname,
    required this.email,
    required this.emailVerified,
    required this.authService,
    required this.roles,
    required this.locale,
    required this.notifyProps,
    required this.lastPasswordUpdate,
    required this.lastPictureUpdate,
    required this.failedAttempts,
    required this.mfaActive,
    required this.timezone,
    required this.termsOfServiceId,
    required this.termsOfServiceCreateAt,
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

  final String? firstName;
  static const String firstNameKey = "first_name";

  final String? lastName;
  static const String lastNameKey = "last_name";

  final String? nickname;
  static const String nicknameKey = "nickname";

  final String? email;
  static const String emailKey = "email";

  final bool? emailVerified;
  static const String emailVerifiedKey = "email_verified";

  final String? authService;
  static const String authServiceKey = "auth_service";

  final String? roles;
  static const String rolesKey = "roles";

  final String? locale;
  static const String localeKey = "locale";

  final NotifyProps? notifyProps;
  static const String notifyPropsKey = "notify_props";

  final int? lastPasswordUpdate;
  static const String lastPasswordUpdateKey = "last_password_update";

  final int? lastPictureUpdate;
  static const String lastPictureUpdateKey = "last_picture_update";

  final int? failedAttempts;
  static const String failedAttemptsKey = "failed_attempts";

  final bool? mfaActive;
  static const String mfaActiveKey = "mfa_active";

  final Timezone? timezone;
  static const String timezoneKey = "timezone";

  final String? termsOfServiceId;
  static const String termsOfServiceIdKey = "terms_of_service_id";

  final int? termsOfServiceCreateAt;
  static const String termsOfServiceCreateAtKey = "terms_of_service_create_at";

  UserModelResponse copyWith({
    String? id,
    int? createAt,
    int? updateAt,
    int? deleteAt,
    String? username,
    String? firstName,
    String? lastName,
    String? nickname,
    String? email,
    bool? emailVerified,
    String? authService,
    String? roles,
    String? locale,
    NotifyProps? notifyProps,
    int? lastPasswordUpdate,
    int? lastPictureUpdate,
    int? failedAttempts,
    bool? mfaActive,
    Timezone? timezone,
    String? termsOfServiceId,
    int? termsOfServiceCreateAt,
  }) =>
      UserModelResponse(
        id: id ?? this.id,
        createAt: createAt ?? this.createAt,
        updateAt: updateAt ?? this.updateAt,
        deleteAt: deleteAt ?? this.deleteAt,
        username: username ?? this.username,
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName,
        nickname: nickname ?? this.nickname,
        email: email ?? this.email,
        emailVerified: emailVerified ?? this.emailVerified,
        authService: authService ?? this.authService,
        roles: roles ?? this.roles,
        locale: locale ?? this.locale,
        notifyProps: notifyProps ?? this.notifyProps,
        lastPasswordUpdate: lastPasswordUpdate ?? this.lastPasswordUpdate,
        lastPictureUpdate: lastPictureUpdate ?? this.lastPictureUpdate,
        failedAttempts: failedAttempts ?? this.failedAttempts,
        mfaActive: mfaActive ?? this.mfaActive,
        timezone: timezone ?? this.timezone,
        termsOfServiceId: termsOfServiceId ?? this.termsOfServiceId,
        termsOfServiceCreateAt:
            termsOfServiceCreateAt ?? this.termsOfServiceCreateAt,
      );

  factory UserModelResponse.fromJson(Map<String, dynamic> json) =>
      UserModelResponse(
        id: json["id"],
        createAt: json["create_at"],
        updateAt: json["update_at"],
        deleteAt: json["delete_at"],
        username: json["username"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        nickname: json["nickname"],
        email: json["email"],
        emailVerified: json["email_verified"],
        authService: json["auth_service"],
        roles: json["roles"],
        locale: json["locale"],
        notifyProps: json["notify_props"] == null
            ? null
            : NotifyProps.fromJson(json["notify_props"]),
        lastPasswordUpdate: json["last_password_update"],
        lastPictureUpdate: json["last_picture_update"],
        failedAttempts: json["failed_attempts"],
        mfaActive: json["mfa_active"],
        timezone: json["timezone"] == null
            ? null
            : Timezone.fromJson(json["timezone"]),
        termsOfServiceId: json["terms_of_service_id"],
        termsOfServiceCreateAt: json["terms_of_service_create_at"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "create_at": createAt,
        "update_at": updateAt,
        "delete_at": deleteAt,
        "username": username,
        "first_name": firstName,
        "last_name": lastName,
        "nickname": nickname,
        "email": email,
        "email_verified": emailVerified,
        "auth_service": authService,
        "roles": roles,
        "locale": locale,
        "notify_props": notifyProps?.toJson(),
        "last_password_update": lastPasswordUpdate,
        "last_picture_update": lastPictureUpdate,
        "failed_attempts": failedAttempts,
        "mfa_active": mfaActive,
        "timezone": timezone?.toJson(),
        "terms_of_service_id": termsOfServiceId,
        "terms_of_service_create_at": termsOfServiceCreateAt,
      };

  @override
  String toString() {
    return "$id, $createAt, $updateAt, $deleteAt, $username, $firstName, $lastName, $nickname, $email, $emailVerified, $authService, $roles, $locale, $notifyProps, $props, $lastPasswordUpdate, $lastPictureUpdate, $failedAttempts, $mfaActive, $timezone, $termsOfServiceId, $termsOfServiceCreateAt, ";
  }

  @override
  List<Object?> get props => [
        id,
        createAt,
        updateAt,
        deleteAt,
        username,
        firstName,
        lastName,
        nickname,
        email,
        emailVerified,
        authService,
        roles,
        locale,
        notifyProps,
        props,
        lastPasswordUpdate,
        lastPictureUpdate,
        failedAttempts,
        mfaActive,
        timezone,
        termsOfServiceId,
        termsOfServiceCreateAt,
      ];
}
