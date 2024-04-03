import 'package:dio/dio.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:hug_mun/openapi.dart';
import 'package:test/test.dart';

/// tests for AuthenticationApi
void main() {
  final dio = Dio(BaseOptions());
  final dioAdapter = DioAdapter(dio: dio);

  final instance = Openapi(dio: dio).getAuthenticationApi();

  dioAdapter.onGet(
    Openapi.basePath,
    (server) => server.reply(
      200,
      {'message': 'Success!'},
      // Reply would wait for one-sec before returning data.
      delay: const Duration(seconds: 1),
    ),
  );
}
