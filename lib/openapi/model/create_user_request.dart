//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:hug_mun/openapi/model/user_notify_props.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_user_request.g.dart';

/// CreateUserRequest
///
/// Properties:
/// * [email] 
/// * [username] 
/// * [firstName] 
/// * [lastName] 
/// * [nickname] 
/// * [authData] - Service-specific authentication data, such as email address.
/// * [authService] - The authentication service, one of \"email\", \"gitlab\", \"ldap\", \"saml\", \"office365\", \"google\", and \"\".
/// * [password] - The password used for email authentication.
/// * [locale] 
/// * [props] 
/// * [notifyProps] 
@BuiltValue()
abstract class CreateUserRequest implements Built<CreateUserRequest, CreateUserRequestBuilder> {
  @BuiltValueField(wireName: r'email')
  String get email;

  @BuiltValueField(wireName: r'username')
  String get username;

  @BuiltValueField(wireName: r'first_name')
  String? get firstName;

  @BuiltValueField(wireName: r'last_name')
  String? get lastName;

  @BuiltValueField(wireName: r'nickname')
  String? get nickname;

  /// Service-specific authentication data, such as email address.
  @BuiltValueField(wireName: r'auth_data')
  String? get authData;

  /// The authentication service, one of \"email\", \"gitlab\", \"ldap\", \"saml\", \"office365\", \"google\", and \"\".
  @BuiltValueField(wireName: r'auth_service')
  String? get authService;

  /// The password used for email authentication.
  @BuiltValueField(wireName: r'password')
  String? get password;

  @BuiltValueField(wireName: r'locale')
  String? get locale;

  @BuiltValueField(wireName: r'props')
  JsonObject? get props;

  @BuiltValueField(wireName: r'notify_props')
  UserNotifyProps? get notifyProps;

  CreateUserRequest._();

  factory CreateUserRequest([void updates(CreateUserRequestBuilder b)]) = _$CreateUserRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateUserRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateUserRequest> get serializer => _$CreateUserRequestSerializer();
}

class _$CreateUserRequestSerializer implements PrimitiveSerializer<CreateUserRequest> {
  @override
  final Iterable<Type> types = const [CreateUserRequest, _$CreateUserRequest];

  @override
  final String wireName = r'CreateUserRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateUserRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'email';
    yield serializers.serialize(
      object.email,
      specifiedType: const FullType(String),
    );
    yield r'username';
    yield serializers.serialize(
      object.username,
      specifiedType: const FullType(String),
    );
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
    if (object.authData != null) {
      yield r'auth_data';
      yield serializers.serialize(
        object.authData,
        specifiedType: const FullType(String),
      );
    }
    if (object.authService != null) {
      yield r'auth_service';
      yield serializers.serialize(
        object.authService,
        specifiedType: const FullType(String),
      );
    }
    if (object.password != null) {
      yield r'password';
      yield serializers.serialize(
        object.password,
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
    if (object.props != null) {
      yield r'props';
      yield serializers.serialize(
        object.props,
        specifiedType: const FullType(JsonObject),
      );
    }
    if (object.notifyProps != null) {
      yield r'notify_props';
      yield serializers.serialize(
        object.notifyProps,
        specifiedType: const FullType(UserNotifyProps),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CreateUserRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CreateUserRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.email = valueDes;
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
        case r'auth_data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.authData = valueDes;
          break;
        case r'auth_service':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.authService = valueDes;
          break;
        case r'password':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.password = valueDes;
          break;
        case r'locale':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.locale = valueDes;
          break;
        case r'props':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.props = valueDes;
          break;
        case r'notify_props':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(UserNotifyProps),
          ) as UserNotifyProps;
          result.notifyProps.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CreateUserRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateUserRequestBuilder();
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

