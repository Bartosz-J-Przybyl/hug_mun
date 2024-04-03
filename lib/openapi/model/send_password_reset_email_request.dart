//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'send_password_reset_email_request.g.dart';

/// SendPasswordResetEmailRequest
///
/// Properties:
/// * [email] - The email of the user
@BuiltValue()
abstract class SendPasswordResetEmailRequest implements Built<SendPasswordResetEmailRequest, SendPasswordResetEmailRequestBuilder> {
  /// The email of the user
  @BuiltValueField(wireName: r'email')
  String get email;

  SendPasswordResetEmailRequest._();

  factory SendPasswordResetEmailRequest([void updates(SendPasswordResetEmailRequestBuilder b)]) = _$SendPasswordResetEmailRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SendPasswordResetEmailRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SendPasswordResetEmailRequest> get serializer => _$SendPasswordResetEmailRequestSerializer();
}

class _$SendPasswordResetEmailRequestSerializer implements PrimitiveSerializer<SendPasswordResetEmailRequest> {
  @override
  final Iterable<Type> types = const [SendPasswordResetEmailRequest, _$SendPasswordResetEmailRequest];

  @override
  final String wireName = r'SendPasswordResetEmailRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SendPasswordResetEmailRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'email';
    yield serializers.serialize(
      object.email,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    SendPasswordResetEmailRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SendPasswordResetEmailRequestBuilder result,
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SendPasswordResetEmailRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SendPasswordResetEmailRequestBuilder();
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

