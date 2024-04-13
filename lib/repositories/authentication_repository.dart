import 'dart:async';

const Duration _300_MS = Duration(milliseconds: 300);
const Duration _1_SEC = Duration(seconds: 1);

enum AuthenticationStatus { unknown, authenticated, unauthenticated }

class AuthenticationRepository {
  final _controller = StreamController<AuthenticationStatus>();

  Stream<AuthenticationStatus> get status async* {
    await Future<void>.delayed(_1_SEC);
    yield AuthenticationStatus.unauthenticated;
    yield* _controller.stream;
  }

  Future<void> logIn(
      {required String username, required String password}) async {
    await Future.delayed(
      _300_MS,
      () => _controller.add(AuthenticationStatus.authenticated),
    );
  }

  void logOut() {
    _controller.add(AuthenticationStatus.unauthenticated);
  }

  void dispose() {
    _controller.close();
  }
}
