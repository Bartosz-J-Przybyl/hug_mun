//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_access_token_sanitized.g.dart';

/// UserAccessTokenSanitized
///
/// Properties:
/// * [id] - Unique identifier for the token
/// * [userId] - The user the token authenticates for
/// * [description] - A description of the token usage
/// * [isActive] - Indicates whether the token is active
@BuiltValue()
abstract class UserAccessTokenSanitized implements Built<UserAccessTokenSanitized, UserAccessTokenSanitizedBuilder> {
  /// Unique identifier for the token
  @BuiltValueField(wireName: r'id')
  String? get id;

  /// The user the token authenticates for
  @BuiltValueField(wireName: r'user_id')
  String? get userId;

  /// A description of the token usage
  @BuiltValueField(wireName: r'description')
  String? get description;

  /// Indicates whether the token is active
  @BuiltValueField(wireName: r'is_active')
  bool? get isActive;

  UserAccessTokenSanitized._();

  factory UserAccessTokenSanitized([void updates(UserAccessTokenSanitizedBuilder b)]) = _$UserAccessTokenSanitized;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UserAccessTokenSanitizedBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UserAccessTokenSanitized> get serializer => _$UserAccessTokenSanitizedSerializer();
}

class _$UserAccessTokenSanitizedSerializer implements PrimitiveSerializer<UserAccessTokenSanitized> {
  @override
  final Iterable<Type> types = const [UserAccessTokenSanitized, _$UserAccessTokenSanitized];

  @override
  final String wireName = r'UserAccessTokenSanitized';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UserAccessTokenSanitized object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
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
    if (object.isActive != null) {
      yield r'is_active';
      yield serializers.serialize(
        object.isActive,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UserAccessTokenSanitized object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UserAccessTokenSanitizedBuilder result,
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
        case r'is_active':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isActive = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UserAccessTokenSanitized deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UserAccessTokenSanitizedBuilder();
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

