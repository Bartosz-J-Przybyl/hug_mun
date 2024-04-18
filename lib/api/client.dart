import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:fpdart/fpdart.dart';
import 'package:http/http.dart';
import 'package:hug_mun/api/model/response/mattermost_error_response.dart';

import 'exceptions/client_exception.dart' as ce;
import 'exceptions/server_exception.dart';

class HugMunHttpClient {
  static const _baseUri = '/api/';
  static const _host = '10.0.2.2';
  static const _port = 8065;
  static const _apiVersion = "v4";
  static final utf_8 = Encoding.getByName('utf-8');
  static final appJson = {"content-type": "application/json"};

  String? _token;
  bool authenticated = false;

  final Client client;

  HugMunHttpClient(this.client);

  final int port = dotenv.env['HTTP_CLIENT_PORT'] != null
      ? int.parse(dotenv.env['HTTP_CLIENT_PORT']!)
      : _port;
  final String host = dotenv.env['HTTP_CLIENT_HOST'] ?? _host;

  Uri parse(String endpoint) {
    // TODO HM-5
    return Uri.parse("http://$host:$port$_baseUri$_apiVersion$endpoint");
  }

  Future<T> post<T>(
    T Function(Map<String, dynamic> object) mapper,
    String endpoint, {
    Map<String, String>? headers,
    String? body,
    Encoding? encoding,
  }) async {
    try {
      final url = parse(endpoint);
      headers ??= appJson;
      encoding ??= utf_8;
      _bearerToken(headers);

      final response = await client.post(
        url,
        body: body,
        headers: headers,
        encoding: encoding,
      );
      return _handleResponse(response, mapper)
          .fold((l) => throw ce.ClientException.from(l), (r) => r);
    } catch (exception, stackTrace) {
      _handleException(exception);
      debugPrintStack(stackTrace: stackTrace);
      rethrow;
    }
  }

  Future<T> get<T>(
    T Function(Map<String, dynamic> object) mapper,
    String endpoint, {
    Map<String, String>? headers,
    String? body,
    Encoding? encoding,
  }) async {
    try {
      final url = parse(endpoint);
      headers ??= appJson;
      encoding ??= utf_8;
      _bearerToken(headers);
      final response = await client.get(
        url,
        headers: headers,
      );
      return _handleResponse(response, mapper)
          .fold((l) => throw ce.ClientException.from(l), (r) => r);
    } catch (exception, stackTrace) {
      _handleException(exception);
      debugPrintStack(stackTrace: stackTrace);
      rethrow;
    }
  }

  Either<MattermostErrorResponse, T> _handleResponse<T>(Response response,
      T Function(Map<String, dynamic> object) mapper) {
    Either<MattermostErrorResponse, T> mapJsonToModel(String body) {
      final json = jsonDecode(body) as Map<String, dynamic>;
      final model = mapper(json);
      if (response.headers.containsKey('token')) {
        final token = response.headers['token'];
        _token = token!;
        authenticated = true;
      }
      return Either.of(model);
    }

    debugPrint("Request finished with status: ${response.statusCode}");
    return switch (response.statusCode) {
      >= 200 && < 300 => mapJsonToModel(response.body),
      >= 400 && < 500 => _mapToError(response.body),
      >= 500 && < 600 => throw ServerException(),
      _ => throw Exception('Request failed with unknown error')
    };
  }

  Either<MattermostErrorResponse, T> _mapToError<T>(String body) {
    final json = jsonDecode(body) as Map<String, dynamic>;
    final model = MattermostErrorResponse.fromJson(json);
    return Either.left(model);
  }

  Map<String, dynamic> _bearerToken(Map<String, dynamic> headers) {
    if (_token != null) {
      headers.putIfAbsent("Authorization", () => "Bearer $_token");
    }
    return headers;
  }

  void _handleException(Object exception) {
    switch (exception) {
      case ServerException se:
        debugPrint('Request finished with error ${se.message}');
      default:
        debugPrint('Request finished with error $exception');
    }
  }
}
