//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'enable_user_access_token_request.g.dart';

/// EnableUserAccessTokenRequest
///
/// Properties:
/// * [tokenId] - The personal access token GUID to enable
@BuiltValue()
abstract class EnableUserAccessTokenRequest implements Built<EnableUserAccessTokenRequest, EnableUserAccessTokenRequestBuilder> {
  /// The personal access token GUID to enable
  @BuiltValueField(wireName: r'token_id')
  String get tokenId;

  EnableUserAccessTokenRequest._();

  factory EnableUserAccessTokenRequest([void updates(EnableUserAccessTokenRequestBuilder b)]) = _$EnableUserAccessTokenRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EnableUserAccessTokenRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EnableUserAccessTokenRequest> get serializer => _$EnableUserAccessTokenRequestSerializer();
}

class _$EnableUserAccessTokenRequestSerializer implements PrimitiveSerializer<EnableUserAccessTokenRequest> {
  @override
  final Iterable<Type> types = const [EnableUserAccessTokenRequest, _$EnableUserAccessTokenRequest];

  @override
  final String wireName = r'EnableUserAccessTokenRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EnableUserAccessTokenRequest object, {
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
    EnableUserAccessTokenRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required EnableUserAccessTokenRequestBuilder result,
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
  EnableUserAccessTokenRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EnableUserAccessTokenRequestBuilder();
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

