//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'revoke_session_request.g.dart';

/// RevokeSessionRequest
///
/// Properties:
/// * [sessionId] - The session GUID to revoke.
@BuiltValue()
abstract class RevokeSessionRequest implements Built<RevokeSessionRequest, RevokeSessionRequestBuilder> {
  /// The session GUID to revoke.
  @BuiltValueField(wireName: r'session_id')
  String get sessionId;

  RevokeSessionRequest._();

  factory RevokeSessionRequest([void updates(RevokeSessionRequestBuilder b)]) = _$RevokeSessionRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RevokeSessionRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RevokeSessionRequest> get serializer => _$RevokeSessionRequestSerializer();
}

class _$RevokeSessionRequestSerializer implements PrimitiveSerializer<RevokeSessionRequest> {
  @override
  final Iterable<Type> types = const [RevokeSessionRequest, _$RevokeSessionRequest];

  @override
  final String wireName = r'RevokeSessionRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RevokeSessionRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'session_id';
    yield serializers.serialize(
      object.sessionId,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    RevokeSessionRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RevokeSessionRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'session_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.sessionId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RevokeSessionRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RevokeSessionRequestBuilder();
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

