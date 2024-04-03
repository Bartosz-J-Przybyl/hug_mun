//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'revoke_user_access_token_request.g.dart';

/// RevokeUserAccessTokenRequest
///
/// Properties:
/// * [tokenId] - The user access token GUID to revoke
@BuiltValue()
abstract class RevokeUserAccessTokenRequest implements Built<RevokeUserAccessTokenRequest, RevokeUserAccessTokenRequestBuilder> {
  /// The user access token GUID to revoke
  @BuiltValueField(wireName: r'token_id')
  String get tokenId;

  RevokeUserAccessTokenRequest._();

  factory RevokeUserAccessTokenRequest([void updates(RevokeUserAccessTokenRequestBuilder b)]) = _$RevokeUserAccessTokenRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RevokeUserAccessTokenRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RevokeUserAccessTokenRequest> get serializer => _$RevokeUserAccessTokenRequestSerializer();
}

class _$RevokeUserAccessTokenRequestSerializer implements PrimitiveSerializer<RevokeUserAccessTokenRequest> {
  @override
  final Iterable<Type> types = const [RevokeUserAccessTokenRequest, _$RevokeUserAccessTokenRequest];

  @override
  final String wireName = r'RevokeUserAccessTokenRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RevokeUserAccessTokenRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'token_id';
    yield serializers.serialize(
      object.tokenId,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    RevokeUserAccessTokenRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RevokeUserAccessTokenRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'token_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.tokenId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RevokeUserAccessTokenRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RevokeUserAccessTokenRequestBuilder();
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
