import 'package:built_collection/built_collection.dart';
import 'package:built_value/iso_8601_date_time_serializer.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:one_of_serializer/any_of_serializer.dart';
import 'package:one_of_serializer/one_of_serializer.dart';
import 'package:hug_mun/openapi.dart';
import 'package:hug_mun/openapi/date_serializer.dart';
import 'package:hug_mun/openapi/model/status.dart';
import 'package:hug_mun/openapi/model/status_ok.dart';
import 'package:hug_mun/openapi/model/status_request.dart';
import 'package:hug_mun/openapi/model/user.dart';

part 'serializers.g.dart';

@SerializersFor([
  Status,
  StatusOK,
  StatusRequest,
  User,
])
Serializers serializers = (_$serializers.toBuilder()
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(Status)]),
        () => ListBuilder<Status>(),
      )
      ..add(const OneOfSerializer())
      ..add(const AnyOfSerializer())
      ..add(const DateSerializer())
      ..add(Iso8601DateTimeSerializer()))
    .build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
