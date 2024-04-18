import 'dart:async';

import 'package:get_it/get_it.dart';
import 'package:hug_mun/api/model/response/login_response_model.dart';
import 'package:hug_mun/api/services/user_service.dart';



enum AuthenticationStatus { unknown, authenticated, unauthenticated }

class AuthenticationRepository {
  final _controller = StreamController<AuthenticationStatus>();
  final _userService = GetIt.instance<UserService>();

  Stream<AuthenticationStatus> get status async* {
    
    yield AuthenticationStatus.unauthenticated;
    yield* _controller.stream;
  }

  Future<LoginModelResponse?> logIn(
      {required String username, required String password}) async {
    try {
      final response = await _userService.login(username, password);
      _controller.add(AuthenticationStatus.authenticated);
      return response;
    } catch (error) {
      _controller.add(AuthenticationStatus.unauthenticated);
      return null;
    }
  }

  void logOut() {
    _controller.add(AuthenticationStatus.unauthenticated);
  }

  void dispose() {
    _controller.close();
  }
}
