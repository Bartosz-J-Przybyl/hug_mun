//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:json_annotation/json_annotation.dart';

part 'create_user_access_token_request.g.dart';

/// CreateUserAccessTokenRequest
///
/// Properties:
/// * [description] - A description of the token usage
@BuiltValue()
@JsonSerializable(createToJson: true, createFactory: true, explicitToJson: true)
abstract class CreateUserAccessTokenRequest
    implements
        Built<CreateUserAccessTokenRequest,
            CreateUserAccessTokenRequestBuilder> {
  /// A description of the token usage
  @BuiltValueField(wireName: r'description')
  String get description;

  CreateUserAccessTokenRequest._();

  factory CreateUserAccessTokenRequest(
          [void updates(CreateUserAccessTokenRequestBuilder b)]) =
      _$CreateUserAccessTokenRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateUserAccessTokenRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateUserAccessTokenRequest> get serializer =>
      _$CreateUserAccessTokenRequestSerializer();
}

class _$CreateUserAccessTokenRequestSerializer
    implements PrimitiveSerializer<CreateUserAccessTokenRequest> {
  @override
  final Iterable<Type> types = const [
    CreateUserAccessTokenRequest,
    _$CreateUserAccessTokenRequest
  ];

  @override
  final String wireName = r'CreateUserAccessTokenRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateUserAccessTokenRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'description';
    yield serializers.serialize(
      object.description,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    CreateUserAccessTokenRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object,
            specifiedType: specifiedType)
        .toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CreateUserAccessTokenRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.description = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CreateUserAccessTokenRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateUserAccessTokenRequestBuilder();
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
