//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_report.g.dart';

/// UserReport
///
/// Properties:
/// * [id] 
/// * [createAt] - The time in milliseconds a user was created
/// * [username] 
/// * [email] 
/// * [displayName] - Calculated display name based on user
/// * [lastLoginAt] - Last time the user was logged in
/// * [lastStatusAt] - Last time the user's status was updated
/// * [lastPostDate] - Last time the user made a post within the given date range
/// * [daysActive] - Total number of days a user posted within the given date range
/// * [totalPosts] - Total number of posts made by a user within the given date range
@BuiltValue()
abstract class UserReport implements Built<UserReport, UserReportBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  /// The time in milliseconds a user was created
  @BuiltValueField(wireName: r'create_at')
  int? get createAt;

  @BuiltValueField(wireName: r'username')
  String? get username;

  @BuiltValueField(wireName: r'email')
  String? get email;

  /// Calculated display name based on user
  @BuiltValueField(wireName: r'display_name')
  String? get displayName;

  /// Last time the user was logged in
  @BuiltValueField(wireName: r'last_login_at')
  int? get lastLoginAt;

  /// Last time the user's status was updated
  @BuiltValueField(wireName: r'last_status_at')
  int? get lastStatusAt;

  /// Last time the user made a post within the given date range
  @BuiltValueField(wireName: r'last_post_date')
  int? get lastPostDate;

  /// Total number of days a user posted within the given date range
  @BuiltValueField(wireName: r'days_active')
  int? get daysActive;

  /// Total number of posts made by a user within the given date range
  @BuiltValueField(wireName: r'total_posts')
  int? get totalPosts;

  UserReport._();

  factory UserReport([void updates(UserReportBuilder b)]) = _$UserReport;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UserReportBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UserReport> get serializer => _$UserReportSerializer();
}

class _$UserReportSerializer implements PrimitiveSerializer<UserReport> {
  @override
  final Iterable<Type> types = const [UserReport, _$UserReport];

  @override
  final String wireName = r'UserReport';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UserReport object, {
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
    if (object.username != null) {
      yield r'username';
      yield serializers.serialize(
        object.username,
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
    if (object.displayName != null) {
      yield r'display_name';
      yield serializers.serialize(
        object.displayName,
        specifiedType: const FullType(String),
      );
    }
    if (object.lastLoginAt != null) {
      yield r'last_login_at';
      yield serializers.serialize(
        object.lastLoginAt,
        specifiedType: const FullType(int),
      );
    }
    if (object.lastStatusAt != null) {
      yield r'last_status_at';
      yield serializers.serialize(
        object.lastStatusAt,
        specifiedType: const FullType(int),
      );
    }
    if (object.lastPostDate != null) {
      yield r'last_post_date';
      yield serializers.serialize(
        object.lastPostDate,
        specifiedType: const FullType(int),
      );
    }
    if (object.daysActive != null) {
      yield r'days_active';
      yield serializers.serialize(
        object.daysActive,
        specifiedType: const FullType(int),
      );
    }
    if (object.totalPosts != null) {
      yield r'total_posts';
      yield serializers.serialize(
        object.totalPosts,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UserReport object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UserReportBuilder result,
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
        case r'username':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.username = valueDes;
          break;
        case r'email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.email = valueDes;
          break;
        case r'display_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.displayName = valueDes;
          break;
        case r'last_login_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.lastLoginAt = valueDes;
          break;
        case r'last_status_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.lastStatusAt = valueDes;
          break;
        case r'last_post_date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.lastPostDate = valueDes;
          break;
        case r'days_active':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.daysActive = valueDes;
          break;
        case r'total_posts':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.totalPosts = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UserReport deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UserReportBuilder();
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

