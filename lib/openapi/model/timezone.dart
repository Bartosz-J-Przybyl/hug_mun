//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'timezone.g.dart';

/// Timezone
///
/// Properties:
/// * [useAutomaticTimezone] - Set to \"true\" to use the browser/system timezone, \"false\" to set manually. Defaults to \"true\".
/// * [manualTimezone] - Value when setting manually the timezone, i.e. \"Europe/Berlin\".
/// * [automaticTimezone] - This value is set automatically when the \"useAutomaticTimezone\" is set to \"true\".
@BuiltValue()
abstract class Timezone implements Built<Timezone, TimezoneBuilder> {
  /// Set to \"true\" to use the browser/system timezone, \"false\" to set manually. Defaults to \"true\".
  @BuiltValueField(wireName: r'useAutomaticTimezone')
  bool? get useAutomaticTimezone;

  /// Value when setting manually the timezone, i.e. \"Europe/Berlin\".
  @BuiltValueField(wireName: r'manualTimezone')
  String? get manualTimezone;

  /// This value is set automatically when the \"useAutomaticTimezone\" is set to \"true\".
  @BuiltValueField(wireName: r'automaticTimezone')
  String? get automaticTimezone;

  Timezone._();

  factory Timezone([void updates(TimezoneBuilder b)]) = _$Timezone;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TimezoneBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Timezone> get serializer => _$TimezoneSerializer();
}

class _$TimezoneSerializer implements PrimitiveSerializer<Timezone> {
  @override
  final Iterable<Type> types = const [Timezone, _$Timezone];

  @override
  final String wireName = r'Timezone';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Timezone object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.useAutomaticTimezone != null) {
      yield r'useAutomaticTimezone';
      yield serializers.serialize(
        object.useAutomaticTimezone,
        specifiedType: const FullType(bool),
      );
    }
    if (object.manualTimezone != null) {
      yield r'manualTimezone';
      yield serializers.serialize(
        object.manualTimezone,
        specifiedType: const FullType(String),
      );
    }
    if (object.automaticTimezone != null) {
      yield r'automaticTimezone';
      yield serializers.serialize(
        object.automaticTimezone,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Timezone object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TimezoneBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'useAutomaticTimezone':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.useAutomaticTimezone = valueDes;
          break;
        case r'manualTimezone':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.manualTimezone = valueDes;
          break;
        case r'automaticTimezone':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.automaticTimezone = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Timezone deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TimezoneBuilder();
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

