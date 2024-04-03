//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'team_member.g.dart';

/// TeamMember
///
/// Properties:
/// * [teamId] - The ID of the team this member belongs to.
/// * [userId] - The ID of the user this member relates to.
/// * [roles] - The complete list of roles assigned to this team member, as a space-separated list of role names, including any roles granted implicitly through permissions schemes.
/// * [deleteAt] - The time in milliseconds that this team member was deleted.
/// * [schemeUser] - Whether this team member holds the default user role defined by the team's permissions scheme.
/// * [schemeAdmin] - Whether this team member holds the default admin role defined by the team's permissions scheme.
/// * [explicitRoles] - The list of roles explicitly assigned to this team member, as a space separated list of role names. This list does *not* include any roles granted implicitly through permissions schemes.
@BuiltValue()
abstract class TeamMember implements Built<TeamMember, TeamMemberBuilder> {
  /// The ID of the team this member belongs to.
  @BuiltValueField(wireName: r'team_id')
  String? get teamId;

  /// The ID of the user this member relates to.
  @BuiltValueField(wireName: r'user_id')
  String? get userId;

  /// The complete list of roles assigned to this team member, as a space-separated list of role names, including any roles granted implicitly through permissions schemes.
  @BuiltValueField(wireName: r'roles')
  String? get roles;

  /// The time in milliseconds that this team member was deleted.
  @BuiltValueField(wireName: r'delete_at')
  int? get deleteAt;

  /// Whether this team member holds the default user role defined by the team's permissions scheme.
  @BuiltValueField(wireName: r'scheme_user')
  bool? get schemeUser;

  /// Whether this team member holds the default admin role defined by the team's permissions scheme.
  @BuiltValueField(wireName: r'scheme_admin')
  bool? get schemeAdmin;

  /// The list of roles explicitly assigned to this team member, as a space separated list of role names. This list does *not* include any roles granted implicitly through permissions schemes.
  @BuiltValueField(wireName: r'explicit_roles')
  String? get explicitRoles;

  TeamMember._();

  factory TeamMember([void updates(TeamMemberBuilder b)]) = _$TeamMember;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TeamMemberBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TeamMember> get serializer => _$TeamMemberSerializer();
}

class _$TeamMemberSerializer implements PrimitiveSerializer<TeamMember> {
  @override
  final Iterable<Type> types = const [TeamMember, _$TeamMember];

  @override
  final String wireName = r'TeamMember';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TeamMember object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.teamId != null) {
      yield r'team_id';
      yield serializers.serialize(
        object.teamId,
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
    if (object.roles != null) {
      yield r'roles';
      yield serializers.serialize(
        object.roles,
        specifiedType: const FullType(String),
      );
    }
    if (object.deleteAt != null) {
      yield r'delete_at';
      yield serializers.serialize(
        object.deleteAt,
        specifiedType: const FullType(int),
      );
    }
    if (object.schemeUser != null) {
      yield r'scheme_user';
      yield serializers.serialize(
        object.schemeUser,
        specifiedType: const FullType(bool),
      );
    }
    if (object.schemeAdmin != null) {
      yield r'scheme_admin';
      yield serializers.serialize(
        object.schemeAdmin,
        specifiedType: const FullType(bool),
      );
    }
    if (object.explicitRoles != null) {
      yield r'explicit_roles';
      yield serializers.serialize(
        object.explicitRoles,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TeamMember object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TeamMemberBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'team_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.teamId = valueDes;
          break;
        case r'user_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.userId = valueDes;
          break;
        case r'roles':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.roles = valueDes;
          break;
        case r'delete_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.deleteAt = valueDes;
          break;
        case r'scheme_user':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.schemeUser = valueDes;
          break;
        case r'scheme_admin':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.schemeAdmin = valueDes;
          break;
        case r'explicit_roles':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.explicitRoles = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TeamMember deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TeamMemberBuilder();
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

