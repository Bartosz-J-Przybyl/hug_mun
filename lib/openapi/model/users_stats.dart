//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'users_stats.g.dart';

/// UsersStats
///
/// Properties:
/// * [totalUsersCount] 
@BuiltValue()
abstract class UsersStats implements Built<UsersStats, UsersStatsBuilder> {
  @BuiltValueField(wireName: r'total_users_count')
  int? get totalUsersCount;

  UsersStats._();

  factory UsersStats([void updates(UsersStatsBuilder b)]) = _$UsersStats;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UsersStatsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UsersStats> get serializer => _$UsersStatsSerializer();
}

class _$UsersStatsSerializer implements PrimitiveSerializer<UsersStats> {
  @override
  final Iterable<Type> types = const [UsersStats, _$UsersStats];

  @override
  final String wireName = r'UsersStats';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UsersStats object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.totalUsersCount != null) {
      yield r'total_users_count';
      yield serializers.serialize(
        object.totalUsersCount,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UsersStats object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UsersStatsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'total_users_count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.totalUsersCount = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UsersStats deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UsersStatsBuilder();
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

