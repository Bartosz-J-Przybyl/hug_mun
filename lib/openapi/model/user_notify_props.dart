//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_notify_props.g.dart';

/// UserNotifyProps
///
/// Properties:
/// * [email] - Set to \"true\" to enable email notifications, \"false\" to disable. Defaults to \"true\".
/// * [push] - Set to \"all\" to receive push notifications for all activity, \"mention\" for mentions and direct messages only, and \"none\" to disable. Defaults to \"mention\".
/// * [desktop] - Set to \"all\" to receive desktop notifications for all activity, \"mention\" for mentions and direct messages only, and \"none\" to disable. Defaults to \"all\".
/// * [desktopSound] - Set to \"true\" to enable sound on desktop notifications, \"false\" to disable. Defaults to \"true\".
/// * [mentionKeys] - A comma-separated list of words to count as mentions. Defaults to username and @username.
/// * [channel] - Set to \"true\" to enable channel-wide notifications (@channel, @all, etc.), \"false\" to disable. Defaults to \"true\".
/// * [firstName] - Set to \"true\" to enable mentions for first name. Defaults to \"true\" if a first name is set, \"false\" otherwise.
@BuiltValue()
abstract class UserNotifyProps implements Built<UserNotifyProps, UserNotifyPropsBuilder> {
  /// Set to \"true\" to enable email notifications, \"false\" to disable. Defaults to \"true\".
  @BuiltValueField(wireName: r'email')
  String? get email;

  /// Set to \"all\" to receive push notifications for all activity, \"mention\" for mentions and direct messages only, and \"none\" to disable. Defaults to \"mention\".
  @BuiltValueField(wireName: r'push')
  String? get push;

  /// Set to \"all\" to receive desktop notifications for all activity, \"mention\" for mentions and direct messages only, and \"none\" to disable. Defaults to \"all\".
  @BuiltValueField(wireName: r'desktop')
  String? get desktop;

  /// Set to \"true\" to enable sound on desktop notifications, \"false\" to disable. Defaults to \"true\".
  @BuiltValueField(wireName: r'desktop_sound')
  String? get desktopSound;

  /// A comma-separated list of words to count as mentions. Defaults to username and @username.
  @BuiltValueField(wireName: r'mention_keys')
  String? get mentionKeys;

  /// Set to \"true\" to enable channel-wide notifications (@channel, @all, etc.), \"false\" to disable. Defaults to \"true\".
  @BuiltValueField(wireName: r'channel')
  String? get channel;

  /// Set to \"true\" to enable mentions for first name. Defaults to \"true\" if a first name is set, \"false\" otherwise.
  @BuiltValueField(wireName: r'first_name')
  String? get firstName;

  UserNotifyProps._();

  factory UserNotifyProps([void updates(UserNotifyPropsBuilder b)]) = _$UserNotifyProps;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UserNotifyPropsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UserNotifyProps> get serializer => _$UserNotifyPropsSerializer();
}

class _$UserNotifyPropsSerializer implements PrimitiveSerializer<UserNotifyProps> {
  @override
  final Iterable<Type> types = const [UserNotifyProps, _$UserNotifyProps];

  @override
  final String wireName = r'UserNotifyProps';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UserNotifyProps object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.email != null) {
      yield r'email';
      yield serializers.serialize(
        object.email,
        specifiedType: const FullType(String),
      );
    }
    if (object.push != null) {
      yield r'push';
      yield serializers.serialize(
        object.push,
        specifiedType: const FullType(String),
      );
    }
    if (object.desktop != null) {
      yield r'desktop';
      yield serializers.serialize(
        object.desktop,
        specifiedType: const FullType(String),
      );
    }
    if (object.desktopSound != null) {
      yield r'desktop_sound';
      yield serializers.serialize(
        object.desktopSound,
        specifiedType: const FullType(String),
      );
    }
    if (object.mentionKeys != null) {
      yield r'mention_keys';
      yield serializers.serialize(
        object.mentionKeys,
        specifiedType: const FullType(String),
      );
    }
    if (object.channel != null) {
      yield r'channel';
      yield serializers.serialize(
        object.channel,
        specifiedType: const FullType(String),
      );
    }
    if (object.firstName != null) {
      yield r'first_name';
      yield serializers.serialize(
        object.firstName,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UserNotifyProps object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UserNotifyPropsBuilder result,
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
        case r'push':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.push = valueDes;
          break;
        case r'desktop':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.desktop = valueDes;
          break;
        case r'desktop_sound':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.desktopSound = valueDes;
          break;
        case r'mention_keys':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.mentionKeys = valueDes;
          break;
        case r'channel':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.channel = valueDes;
          break;
        case r'first_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.firstName = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UserNotifyProps deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UserNotifyPropsBuilder();
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

