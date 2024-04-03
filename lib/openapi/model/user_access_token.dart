//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_access_token.g.dart';

/// UserAccessToken
///
/// Properties:
/// * [id] - Unique identifier for the token
/// * [token] - The token used for authentication
/// * [userId] - The user the token authenticates for
/// * [description] - A description of the token usage
@BuiltValue()
abstract class UserAccessToken implements Built<UserAccessToken, UserAccessTokenBuilder> {
  /// Unique identifier for the token
  @BuiltValueField(wireName: r'id')
  String? get id;

  /// The token used for authentication
  @BuiltValueField(wireName: r'token')
  String? get token;

  /// The user the token authenticates for
  @BuiltValueField(wireName: r'user_id')
  String? get userId;

  /// A description of the token usage
  @BuiltValueField(wireName: r'description')
  String? get description;

  UserAccessToken._();

  factory UserAccessToken([void updates(UserAccessTokenBuilder b)]) = _$UserAccessToken;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UserAccessTokenBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UserAccessToken> get serializer => _$UserAccessTokenSerializer();
}

class _$UserAccessTokenSerializer implements PrimitiveSerializer<UserAccessToken> {
  @override
  final Iterable<Type> types = const [UserAccessToken, _$UserAccessToken];

  @override
  final String wireName = r'UserAccessToken';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UserAccessToken object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.token != null) {
      yield r'token';
      yield serializers.serialize(
        object.token,
        specifiedType: const FullType(String),
      );
    }
    if (object.userId != null) {
      yield r'user_id';
      yield serializers.serialize(
        object.userId,
        specifiedType: const FullType(String),
      );
    }
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UserAccessToken object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UserAccessTokenBuilder result,
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
        case r'token':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.token = valueDes;
          break;
        case r'user_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.userId = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.description = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UserAccessToken deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UserAccessTokenBuilder();
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

