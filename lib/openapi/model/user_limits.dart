//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_limits.g.dart';

/// UserLimits
///
/// Properties:
/// * [maxUsersLimit] - The maximum number of users allowed on server
/// * [activeUserCount] - The number of active users in the server
@BuiltValue()
abstract class UserLimits implements Built<UserLimits, UserLimitsBuilder> {
  /// The maximum number of users allowed on server
  @BuiltValueField(wireName: r'maxUsersLimit')
  int? get maxUsersLimit;

  /// The number of active users in the server
  @BuiltValueField(wireName: r'activeUserCount')
  int? get activeUserCount;

  UserLimits._();

  factory UserLimits([void updates(UserLimitsBuilder b)]) = _$UserLimits;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UserLimitsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UserLimits> get serializer => _$UserLimitsSerializer();
}

class _$UserLimitsSerializer implements PrimitiveSerializer<UserLimits> {
  @override
  final Iterable<Type> types = const [UserLimits, _$UserLimits];

  @override
  final String wireName = r'UserLimits';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UserLimits object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.maxUsersLimit != null) {
      yield r'maxUsersLimit';
      yield serializers.serialize(
        object.maxUsersLimit,
        specifiedType: const FullType(int),
      );
    }
    if (object.activeUserCount != null) {
      yield r'activeUserCount';
      yield serializers.serialize(
        object.activeUserCount,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UserLimits object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UserLimitsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'maxUsersLimit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.maxUsersLimit = valueDes;
          break;
        case r'activeUserCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.activeUserCount = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UserLimits deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UserLimitsBuilder();
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

