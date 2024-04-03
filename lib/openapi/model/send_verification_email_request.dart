//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'send_verification_email_request.g.dart';

/// SendVerificationEmailRequest
///
/// Properties:
/// * [email] - Email of a user
@BuiltValue()
abstract class SendVerificationEmailRequest implements Built<SendVerificationEmailRequest, SendVerificationEmailRequestBuilder> {
  /// Email of a user
  @BuiltValueField(wireName: r'email')
  String get email;

  SendVerificationEmailRequest._();

  factory SendVerificationEmailRequest([void updates(SendVerificationEmailRequestBuilder b)]) = _$SendVerificationEmailRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SendVerificationEmailRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SendVerificationEmailRequest> get serializer => _$SendVerificationEmailRequestSerializer();
}

class _$SendVerificationEmailRequestSerializer implements PrimitiveSerializer<SendVerificationEmailRequest> {
  @override
  final Iterable<Type> types = const [SendVerificationEmailRequest, _$SendVerificationEmailRequest];

  @override
  final String wireName = r'SendVerificationEmailRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SendVerificationEmailRequest object, {
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
    SendVerificationEmailRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SendVerificationEmailRequestBuilder result,
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
  SendVerificationEmailRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SendVerificationEmailRequestBuilder();
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

