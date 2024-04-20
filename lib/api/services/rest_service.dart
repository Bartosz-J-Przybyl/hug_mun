import 'package:hug_mun/api/client.dart';

abstract class RestService {
  final HugMunHttpClient httpClient;
  final String baseUrl;

  RestService({required this.httpClient, required this.baseUrl});
}
