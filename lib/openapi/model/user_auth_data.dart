//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_auth_data.g.dart';

/// UserAuthData
///
/// Properties:
/// * [authData] - Service-specific authentication data
/// * [authService] - The authentication service such as \"email\", \"gitlab\", or \"ldap\"
@BuiltValue()
abstract class UserAuthData implements Built<UserAuthData, UserAuthDataBuilder> {
  /// Service-specific authentication data
  @BuiltValueField(wireName: r'auth_data')
  String get authData;

  /// The authentication service such as \"email\", \"gitlab\", or \"ldap\"
  @BuiltValueField(wireName: r'auth_service')
  String get authService;

  UserAuthData._();

  factory UserAuthData([void updates(UserAuthDataBuilder b)]) = _$UserAuthData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UserAuthDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UserAuthData> get serializer => _$UserAuthDataSerializer();
}

class _$UserAuthDataSerializer implements PrimitiveSerializer<UserAuthData> {
  @override
  final Iterable<Type> types = const [UserAuthData, _$UserAuthData];

  @override
  final String wireName = r'UserAuthData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UserAuthData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'auth_data';
    yield serializers.serialize(
      object.authData,
      specifiedType: const FullType(String),
    );
    yield r'auth_service';
    yield serializers.serialize(
      object.authService,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    UserAuthData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UserAuthDataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UserAuthData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UserAuthDataBuilder();
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

