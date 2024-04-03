//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:hug_mun/openapi/model/timezone.dart';
import 'package:hug_mun/openapi/model/user_notify_props.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user.g.dart';

/// User
///
/// Properties:
/// * [id] 
/// * [createAt] - The time in milliseconds a user was created
/// * [updateAt] - The time in milliseconds a user was last updated
/// * [deleteAt] - The time in milliseconds a user was deleted
/// * [username] 
/// * [firstName] 
/// * [lastName] 
/// * [nickname] 
/// * [email] 
/// * [emailVerified] 
/// * [authService] 
/// * [roles] 
/// * [locale] 
/// * [notifyProps] 
/// * [props] 
/// * [lastPasswordUpdate] 
/// * [lastPictureUpdate] 
/// * [failedAttempts] 
/// * [mfaActive] 
/// * [timezone] 
/// * [termsOfServiceId] - ID of accepted terms of service, if any. This field is not present if empty.
/// * [termsOfServiceCreateAt] - The time in milliseconds the user accepted the terms of service
@BuiltValue()
abstract class User implements Built<User, UserBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  /// The time in milliseconds a user was created
  @BuiltValueField(wireName: r'create_at')
  int? get createAt;

  /// The time in milliseconds a user was last updated
  @BuiltValueField(wireName: r'update_at')
  int? get updateAt;

  /// The time in milliseconds a user was deleted
  @BuiltValueField(wireName: r'delete_at')
  int? get deleteAt;

  @BuiltValueField(wireName: r'username')
  String? get username;

  @BuiltValueField(wireName: r'first_name')
  String? get firstName;

  @BuiltValueField(wireName: r'last_name')
  String? get lastName;

  @BuiltValueField(wireName: r'nickname')
  String? get nickname;

  @BuiltValueField(wireName: r'email')
  String? get email;

  @BuiltValueField(wireName: r'email_verified')
  bool? get emailVerified;

  @BuiltValueField(wireName: r'auth_service')
  String? get authService;

  @BuiltValueField(wireName: r'roles')
  String? get roles;

  @BuiltValueField(wireName: r'locale')
  String? get locale;

  @BuiltValueField(wireName: r'notify_props')
  UserNotifyProps? get notifyProps;

  @BuiltValueField(wireName: r'props')
  JsonObject? get props;

  @BuiltValueField(wireName: r'last_password_update')
  int? get lastPasswordUpdate;

  @BuiltValueField(wireName: r'last_picture_update')
  int? get lastPictureUpdate;

  @BuiltValueField(wireName: r'failed_attempts')
  int? get failedAttempts;

  @BuiltValueField(wireName: r'mfa_active')
  bool? get mfaActive;

  @BuiltValueField(wireName: r'timezone')
  Timezone? get timezone;

  /// ID of accepted terms of service, if any. This field is not present if empty.
  @BuiltValueField(wireName: r'terms_of_service_id')
  String? get termsOfServiceId;

  /// The time in milliseconds the user accepted the terms of service
  @BuiltValueField(wireName: r'terms_of_service_create_at')
  int? get termsOfServiceCreateAt;

  User._();

  factory User([void updates(UserBuilder b)]) = _$User;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UserBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<User> get serializer => _$UserSerializer();
}

class _$UserSerializer implements PrimitiveSerializer<User> {
  @override
  final Iterable<Type> types = const [User, _$User];

  @override
  final String wireName = r'User';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    User object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.createAt != null) {
      yield r'create_at';
      yield serializers.serialize(
        object.createAt,
        specifiedType: const FullType(int),
      );
    }
    if (object.updateAt != null) {
      yield r'update_at';
      yield serializers.serialize(
        object.updateAt,
        specifiedType: const FullType(int),
      );
    }
    if (object.deleteAt != null) {
      yield r'delete_at';
      yield serializers.serialize(
        object.deleteAt,
        specifiedType: const FullType(int),
      );
    }
    if (object.username != null) {
      yield r'username';
      yield serializers.serialize(
        object.username,
        specifiedType: const FullType(String),
      );
    }
    if (object.firstName != null) {
      yield r'first_name';
      yield serializers.serialize(
        object.firstName,
        specifiedType: const FullType(String),
      );
    }
    if (object.lastName != null) {
      yield r'last_name';
      yield serializers.serialize(
        object.lastName,
        specifiedType: const FullType(String),
      );
    }
    if (object.nickname != null) {
      yield r'nickname';
      yield serializers.serialize(
        object.nickname,
        specifiedType: const FullType(String),
      );
    }
    if (object.email != null) {
      yield r'email';
      yield serializers.serialize(
        object.email,
        specifiedType: const FullType(String),
      );
    }
    if (object.emailVerified != null) {
      yield r'email_verified';
      yield serializers.serialize(
        object.emailVerified,
        specifiedType: const FullType(bool),
      );
    }
    if (object.authService != null) {
      yield r'auth_service';
      yield serializers.serialize(
        object.authService,
        specifiedType: const FullType(String),
      );
    }
    if (object.roles != null) {
      yield r'roles';
      yield serializers.serialize(
        object.roles,
        specifiedType: const FullType(String),
      );
    }
    if (object.locale != null) {
      yield r'locale';
      yield serializers.serialize(
        object.locale,
        specifiedType: const FullType(String),
      );
    }
    if (object.notifyProps != null) {
      yield r'notify_props';
      yield serializers.serialize(
        object.notifyProps,
        specifiedType: const FullType(UserNotifyProps),
      );
    }
    if (object.props != null) {
      yield r'props';
      yield serializers.serialize(
        object.props,
        specifiedType: const FullType(JsonObject),
      );
    }
    if (object.lastPasswordUpdate != null) {
      yield r'last_password_update';
      yield serializers.serialize(
        object.lastPasswordUpdate,
        specifiedType: const FullType(int),
      );
    }
    if (object.lastPictureUpdate != null) {
      yield r'last_picture_update';
      yield serializers.serialize(
        object.lastPictureUpdate,
        specifiedType: const FullType(int),
      );
    }
    if (object.failedAttempts != null) {
      yield r'failed_attempts';
      yield serializers.serialize(
        object.failedAttempts,
        specifiedType: const FullType(int),
      );
    }
    if (object.mfaActive != null) {
      yield r'mfa_active';
      yield serializers.serialize(
        object.mfaActive,
        specifiedType: const FullType(bool),
      );
    }
    if (object.timezone != null) {
      yield r'timezone';
      yield serializers.serialize(
        object.timezone,
        specifiedType: const FullType(Timezone),
      );
    }
    if (object.termsOfServiceId != null) {
      yield r'terms_of_service_id';
      yield serializers.serialize(
        object.termsOfServiceId,
        specifiedType: const FullType(String),
      );
    }
    if (object.termsOfServiceCreateAt != null) {
      yield r'terms_of_service_create_at';
      yield serializers.serialize(
        object.termsOfServiceCreateAt,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    User object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UserBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'create_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.createAt = valueDes;
          break;
        case r'update_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.updateAt = valueDes;
          break;
        case r'delete_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.deleteAt = valueDes;
          break;
        case r'username':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.username = valueDes;
          break;
        case r'first_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.firstName = valueDes;
          break;
        case r'last_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.lastName = valueDes;
          break;
        case r'nickname':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.nickname = valueDes;
          break;
        case r'email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.email = valueDes;
          break;
        case r'email_verified':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.emailVerified = valueDes;
          break;
        case r'auth_service':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.authService = valueDes;
          break;
        case r'roles':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.roles = valueDes;
          break;
        case r'locale':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.locale = valueDes;
          break;
        case r'notify_props':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(UserNotifyProps),
          ) as UserNotifyProps;
          result.notifyProps.replace(valueDes);
          break;
        case r'props':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.props = valueDes;
          break;
        case r'last_password_update':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.lastPasswordUpdate = valueDes;
          break;
        case r'last_picture_update':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.lastPictureUpdate = valueDes;
          break;
        case r'failed_attempts':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.failedAttempts = valueDes;
          break;
        case r'mfa_active':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.mfaActive = valueDes;
          break;
        case r'timezone':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Timezone),
          ) as Timezone;
          result.timezone.replace(valueDes);
          break;
        case r'terms_of_service_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.termsOfServiceId = valueDes;
          break;
        case r'terms_of_service_create_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.termsOfServiceCreateAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  User deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UserBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

