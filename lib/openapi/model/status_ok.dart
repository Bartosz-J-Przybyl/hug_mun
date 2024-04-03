//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'status_ok.g.dart';

/// StatusOK
///
/// Properties:
/// * [status] - Will contain \"ok\" if the request was successful and there was nothing else to return
@BuiltValue()
abstract class StatusOK implements Built<StatusOK, StatusOKBuilder> {
  /// Will contain \"ok\" if the request was successful and there was nothing else to return
  @BuiltValueField(wireName: r'status')
  String? get status;

  StatusOK._();

  factory StatusOK([void updates(StatusOKBuilder b)]) = _$StatusOK;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(StatusOKBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<StatusOK> get serializer => _$StatusOKSerializer();
}

class _$StatusOKSerializer implements PrimitiveSerializer<StatusOK> {
  @override
  final Iterable<Type> types = const [StatusOK, _$StatusOK];

  @override
  final String wireName = r'StatusOK';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    StatusOK object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    StatusOK object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required StatusOKBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.status = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  StatusOK deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StatusOKBuilder();
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

