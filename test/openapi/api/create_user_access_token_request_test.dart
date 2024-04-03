import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:hug_mun/openapi.dart';
import 'package:test/test.dart';

// tests for CreateUserAccessTokenRequest
void main() {
  final dio = Dio(BaseOptions());
  final dioAdapter = DioAdapter(dio: dio);
  const url = '${Openapi.basePath}/api/v4/users/{user_id}/tokens';

  group(CreateUserAccessTokenRequest, () {
    // A description of the token usage
    // String description
    test('to test the property `description`', () async {
      final instance = CreateUserAccessTokenRequestBuilder();
      instance.description = 'lorem ipsum';
      final entity = instance.build();
      print(entity);
      final json = jsonEncode(entity);
      print(json);
      dioAdapter.onPost(
        url,
        (server) => server.reply(
          200,
          {json},
          delay: const Duration(seconds: 1),
        ),
      );
      final response = await dio.post(url);
      jsonDecode(response.data).shouldBeEqualTo(entity);
    });
  });
}
