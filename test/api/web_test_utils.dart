import 'package:http/http.dart';
import 'package:mocktail/mocktail.dart';

class MockHttpClient extends Mock implements Client {}

class FakeUri extends Fake implements Uri {}

T anyHeader<T>() => any(named: 'headers');

T anyEncoding<T>() => any(named: 'encoding');