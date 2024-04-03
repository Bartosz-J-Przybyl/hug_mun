//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:hug_mun/openapi/model/team_member.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'session.g.dart';

/// Session
///
/// Properties:
/// * [createAt] - The time in milliseconds a session was created
/// * [deviceId] 
/// * [expiresAt] - The time in milliseconds a session will expire
/// * [id] 
/// * [isOauth] 
/// * [lastActivityAt] - The time in milliseconds of the last activity of a session
/// * [props] 
/// * [roles] 
/// * [teamMembers] 
/// * [token] 
/// * [userId] 
@BuiltValue()
abstract class Session implements Built<Session, SessionBuilder> {
  /// The time in milliseconds a session was created
  @BuiltValueField(wireName: r'create_at')
  int? get createAt;

  @BuiltValueField(wireName: r'device_id')
  String? get deviceId;

  /// The time in milliseconds a session will expire
  @BuiltValueField(wireName: r'expires_at')
  int? get expiresAt;

  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'is_oauth')
  bool? get isOauth;

  /// The time in milliseconds of the last activity of a session
  @BuiltValueField(wireName: r'last_activity_at')
  int? get lastActivityAt;

  @BuiltValueField(wireName: r'props')
  JsonObject? get props;

  @BuiltValueField(wireName: r'roles')
  String? get roles;

  @BuiltValueField(wireName: r'team_members')
  BuiltList<TeamMember>? get teamMembers;

  @BuiltValueField(wireName: r'token')
  String? get token;

  @BuiltValueField(wireName: r'user_id')
  String? get userId;

  Session._();

  factory Session([void updates(SessionBuilder b)]) = _$Session;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SessionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Session> get serializer => _$SessionSerializer();
}

class _$SessionSerializer implements PrimitiveSerializer<Session> {
  @override
  final Iterable<Type> types = const [Session, _$Session];

  @override
  final String wireName = r'Session';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Session object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.createAt != null) {
      yield r'create_at';
      yield serializers.serialize(
        object.createAt,
        specifiedType: const FullType(int),
      );
    }
    if (object.deviceId != null) {
      yield r'device_id';
      yield serializers.serialize(
        object.deviceId,
        specifiedType: const FullType(String),
      );
    }
    if (object.expiresAt != null) {
      yield r'expires_at';
      yield serializers.serialize(
        object.expiresAt,
        specifiedType: const FullType(int),
      );
    }
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.isOauth != null) {
      yield r'is_oauth';
      yield serializers.serialize(
        object.isOauth,
        specifiedType: const FullType(bool),
      );
    }
    if (object.lastActivityAt != null) {
      yield r'last_activity_at';
      yield serializers.serialize(
        object.lastActivityAt,
        specifiedType: const FullType(int),
      );
    }
    if (object.props != null) {
      yield r'props';
      yield serializers.serialize(
        object.props,
        specifiedType: const FullType(JsonObject),
      );
    }
    if (object.roles != null) {
      yield r'roles';
      yield serializers.serialize(
        object.roles,
        specifiedType: const FullType(String),
      );
    }
    if (object.teamMembers != null) {
      yield r'team_members';
      yield serializers.serialize(
        object.teamMembers,
        specifiedType: const FullType(BuiltList, [FullType(TeamMember)]),
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
  }

  @override
  Object serialize(
    Serializers serializers,
    Session object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SessionBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'create_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.createAt = valueDes;
          break;
        case r'device_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.deviceId = valueDes;
          break;
        case r'expires_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.expiresAt = valueDes;
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'is_oauth':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isOauth = valueDes;
          break;
        case r'last_activity_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.lastActivityAt = valueDes;
          break;
        case r'props':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.props = valueDes;
          break;
        case r'roles':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.roles = valueDes;
          break;
        case r'team_members':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(TeamMember)]),
          ) as BuiltList<TeamMember>;
          result.teamMembers.replace(valueDes);
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Session deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SessionBuilder();
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

