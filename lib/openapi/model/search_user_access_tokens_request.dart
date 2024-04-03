//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'search_user_access_tokens_request.g.dart';

/// SearchUserAccessTokensRequest
///
/// Properties:
/// * [term] - The search term to match against the token id, user id or username.
@BuiltValue()
abstract class SearchUserAccessTokensRequest implements Built<SearchUserAccessTokensRequest, SearchUserAccessTokensRequestBuilder> {
  /// The search term to match against the token id, user id or username.
  @BuiltValueField(wireName: r'term')
  String get term;

  SearchUserAccessTokensRequest._();

  factory SearchUserAccessTokensRequest([void updates(SearchUserAccessTokensRequestBuilder b)]) = _$SearchUserAccessTokensRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SearchUserAccessTokensRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SearchUserAccessTokensRequest> get serializer => _$SearchUserAccessTokensRequestSerializer();
}

class _$SearchUserAccessTokensRequestSerializer implements PrimitiveSerializer<SearchUserAccessTokensRequest> {
  @override
  final Iterable<Type> types = const [SearchUserAccessTokensRequest, _$SearchUserAccessTokensRequest];

  @override
  final String wireName = r'SearchUserAccessTokensRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SearchUserAccessTokensRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'term';
    yield serializers.serialize(
      object.term,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    SearchUserAccessTokensRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SearchUserAccessTokensRequestBuilder result,
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SearchUserAccessTokensRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SearchUserAccessTokensRequestBuilder();
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

