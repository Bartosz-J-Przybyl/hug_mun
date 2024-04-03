//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_terms_of_service.g.dart';

/// UserTermsOfService
///
/// Properties:
/// * [userId] - The unique identifier of the user who performed this terms of service action.
/// * [termsOfServiceId] - The unique identifier of the terms of service the action was performed on.
/// * [createAt] - The time in milliseconds that this action was performed.
@BuiltValue()
abstract class UserTermsOfService implements Built<UserTermsOfService, UserTermsOfServiceBuilder> {
  /// The unique identifier of the user who performed this terms of service action.
  @BuiltValueField(wireName: r'user_id')
  String? get userId;

  /// The unique identifier of the terms of service the action was performed on.
  @BuiltValueField(wireName: r'terms_of_service_id')
  String? get termsOfServiceId;

  /// The time in milliseconds that this action was performed.
  @BuiltValueField(wireName: r'create_at')
  int? get createAt;

  UserTermsOfService._();

  factory UserTermsOfService([void updates(UserTermsOfServiceBuilder b)]) = _$UserTermsOfService;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UserTermsOfServiceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UserTermsOfService> get serializer => _$UserTermsOfServiceSerializer();
}

class _$UserTermsOfServiceSerializer implements PrimitiveSerializer<UserTermsOfService> {
  @override
  final Iterable<Type> types = const [UserTermsOfService, _$UserTermsOfService];

  @override
  final String wireName = r'UserTermsOfService';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UserTermsOfService object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.userId != null) {
      yield r'user_id';
      yield serializers.serialize(
        object.userId,
        specifiedType: const FullType(String),
      );
    }
    if (object.termsOfServiceId != null) {
      yield r'terms_of_service_id';
      yield serializers.serialize(
        object.termsOfServiceId,
        specifiedType: const FullType(String),
      );
    }
    if (object.createAt != null) {
      yield r'create_at';
      yield serializers.serialize(
        object.createAt,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UserTermsOfService object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UserTermsOfServiceBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'user_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.userId = valueDes;
          break;
        case r'terms_of_service_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.termsOfServiceId = valueDes;
          break;
        case r'create_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.createAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UserTermsOfService deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UserTermsOfServiceBuilder();
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

