//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'disable_user_access_token_request.g.dart';

/// DisableUserAccessTokenRequest
///
/// Properties:
/// * [tokenId] - The personal access token GUID to disable
@BuiltValue()
abstract class DisableUserAccessTokenRequest implements Built<DisableUserAccessTokenRequest, DisableUserAccessTokenRequestBuilder> {
  /// The personal access token GUID to disable
  @BuiltValueField(wireName: r'token_id')
  String get tokenId;

  DisableUserAccessTokenRequest._();

  factory DisableUserAccessTokenRequest([void updates(DisableUserAccessTokenRequestBuilder b)]) = _$DisableUserAccessTokenRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DisableUserAccessTokenRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DisableUserAccessTokenRequest> get serializer => _$DisableUserAccessTokenRequestSerializer();
}

class _$DisableUserAccessTokenRequestSerializer implements PrimitiveSerializer<DisableUserAccessTokenRequest> {
  @override
  final Iterable<Type> types = const [DisableUserAccessTokenRequest, _$DisableUserAccessTokenRequest];

  @override
  final String wireName = r'DisableUserAccessTokenRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DisableUserAccessTokenRequest object, {
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
    DisableUserAccessTokenRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DisableUserAccessTokenRequestBuilder result,
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
  DisableUserAccessTokenRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DisableUserAccessTokenRequestBuilder();
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

