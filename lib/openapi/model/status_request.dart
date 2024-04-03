//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'status_request.g.dart';

/// StatusRequest
///
/// Properties:
/// * [message] - The status update message.
/// * [reminder] - The number of seconds until the system will send a reminder to the owner to update the status. No reminder will be scheduled if reminder is 0 or omitted.
@BuiltValue()
abstract class StatusRequest implements Built<StatusRequest, StatusRequestBuilder> {
  /// The status update message.
  @BuiltValueField(wireName: r'message')
  String get message;

  /// The number of seconds until the system will send a reminder to the owner to update the status. No reminder will be scheduled if reminder is 0 or omitted.
  @BuiltValueField(wireName: r'reminder')
  num? get reminder;

  StatusRequest._();

  factory StatusRequest([void updates(StatusRequestBuilder b)]) = _$StatusRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(StatusRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<StatusRequest> get serializer => _$StatusRequestSerializer();
}

class _$StatusRequestSerializer implements PrimitiveSerializer<StatusRequest> {
  @override
  final Iterable<Type> types = const [StatusRequest, _$StatusRequest];

  @override
  final String wireName = r'StatusRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    StatusRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'message';
    yield serializers.serialize(
      object.message,
      specifiedType: const FullType(String),
    );
    if (object.reminder != null) {
      yield r'reminder';
      yield serializers.serialize(
        object.reminder,
        specifiedType: const FullType(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    StatusRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required StatusRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.message = valueDes;
          break;
        case r'reminder':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.reminder = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  StatusRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StatusRequestBuilder();
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

