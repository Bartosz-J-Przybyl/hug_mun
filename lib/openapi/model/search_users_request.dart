//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'search_users_request.g.dart';

/// SearchUsersRequest
///
/// Properties:
/// * [term] - The term to match against username, full name, nickname and email
/// * [teamId] - If provided, only search users on this team
/// * [notInTeamId] - If provided, only search users not on this team
/// * [inChannelId] - If provided, only search users in this channel
/// * [notInChannelId] - If provided, only search users not in this channel. Must specifiy `team_id` when using this option
/// * [inGroupId] - If provided, only search users in this group. Must have `manage_system` permission.
/// * [groupConstrained] - When used with `not_in_channel_id` or `not_in_team_id`, returns only the users that are allowed to join the channel or team based on its group constrains.
/// * [allowInactive] - When `true`, include deactivated users in the results
/// * [withoutTeam] - Set this to `true` if you would like to search for users that are not on a team. This option takes precendence over `team_id`, `in_channel_id`, and `not_in_channel_id`.
/// * [limit] - The maximum number of users to return in the results  __Available as of server version 5.6. Defaults to `100` if not provided or on an earlier server version.__ 
@BuiltValue()
abstract class SearchUsersRequest implements Built<SearchUsersRequest, SearchUsersRequestBuilder> {
  /// The term to match against username, full name, nickname and email
  @BuiltValueField(wireName: r'term')
  String get term;

  /// If provided, only search users on this team
  @BuiltValueField(wireName: r'team_id')
  String? get teamId;

  /// If provided, only search users not on this team
  @BuiltValueField(wireName: r'not_in_team_id')
  String? get notInTeamId;

  /// If provided, only search users in this channel
  @BuiltValueField(wireName: r'in_channel_id')
  String? get inChannelId;

  /// If provided, only search users not in this channel. Must specifiy `team_id` when using this option
  @BuiltValueField(wireName: r'not_in_channel_id')
  String? get notInChannelId;

  /// If provided, only search users in this group. Must have `manage_system` permission.
  @BuiltValueField(wireName: r'in_group_id')
  String? get inGroupId;

  /// When used with `not_in_channel_id` or `not_in_team_id`, returns only the users that are allowed to join the channel or team based on its group constrains.
  @BuiltValueField(wireName: r'group_constrained')
  bool? get groupConstrained;

  /// When `true`, include deactivated users in the results
  @BuiltValueField(wireName: r'allow_inactive')
  bool? get allowInactive;

  /// Set this to `true` if you would like to search for users that are not on a team. This option takes precendence over `team_id`, `in_channel_id`, and `not_in_channel_id`.
  @BuiltValueField(wireName: r'without_team')
  bool? get withoutTeam;

  /// The maximum number of users to return in the results  __Available as of server version 5.6. Defaults to `100` if not provided or on an earlier server version.__ 
  @BuiltValueField(wireName: r'limit')
  int? get limit;

  SearchUsersRequest._();

  factory SearchUsersRequest([void updates(SearchUsersRequestBuilder b)]) = _$SearchUsersRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SearchUsersRequestBuilder b) => b
      ..limit = 100;

  @BuiltValueSerializer(custom: true)
  static Serializer<SearchUsersRequest> get serializer => _$SearchUsersRequestSerializer();
}

class _$SearchUsersRequestSerializer implements PrimitiveSerializer<SearchUsersRequest> {
  @override
  final Iterable<Type> types = const [SearchUsersRequest, _$SearchUsersRequest];

  @override
  final String wireName = r'SearchUsersRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SearchUsersRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'term';
    yield serializers.serialize(
      object.term,
      specifiedType: const FullType(String),
    );
    if (object.teamId != null) {
      yield r'team_id';
      yield serializers.serialize(
        object.teamId,
        specifiedType: const FullType(String),
      );
    }
    if (object.notInTeamId != null) {
      yield r'not_in_team_id';
      yield serializers.serialize(
        object.notInTeamId,
        specifiedType: const FullType(String),
      );
    }
    if (object.inChannelId != null) {
      yield r'in_channel_id';
      yield serializers.serialize(
        object.inChannelId,
        specifiedType: const FullType(String),
      );
    }
    if (object.notInChannelId != null) {
      yield r'not_in_channel_id';
      yield serializers.serialize(
        object.notInChannelId,
        specifiedType: const FullType(String),
      );
    }
    if (object.inGroupId != null) {
      yield r'in_group_id';
      yield serializers.serialize(
        object.inGroupId,
        specifiedType: const FullType(String),
      );
    }
    if (object.groupConstrained != null) {
      yield r'group_constrained';
      yield serializers.serialize(
        object.groupConstrained,
        specifiedType: const FullType(bool),
      );
    }
    if (object.allowInactive != null) {
      yield r'allow_inactive';
      yield serializers.serialize(
        object.allowInactive,
        specifiedType: const FullType(bool),
      );
    }
    if (object.withoutTeam != null) {
      yield r'without_team';
      yield serializers.serialize(
        object.withoutTeam,
        specifiedType: const FullType(bool),
      );
    }
    if (object.limit != null) {
      yield r'limit';
      yield serializers.serialize(
        object.limit,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SearchUsersRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SearchUsersRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'term':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.term = valueDes;
          break;
        case r'team_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.teamId = valueDes;
          break;
        case r'not_in_team_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.notInTeamId = valueDes;
          break;
        case r'in_channel_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.inChannelId = valueDes;
          break;
        case r'not_in_channel_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.notInChannelId = valueDes;
          break;
        case r'in_group_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.inGroupId = valueDes;
          break;
        case r'group_constrained':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.groupConstrained = valueDes;
          break;
        case r'allow_inactive':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.allowInactive = valueDes;
          break;
        case r'without_team':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.withoutTeam = valueDes;
          break;
        case r'limit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.limit = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SearchUsersRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SearchUsersRequestBuilder();
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

