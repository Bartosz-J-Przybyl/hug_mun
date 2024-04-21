import 'dart:async';

import 'package:hug_mun/api/model/response/login_response_model.dart';
import 'package:hug_mun/blocs/login/bloc/login_bloc.dart';
import 'package:hug_mun/models/user.dart';

class UserRepository {
  final _controller = StreamController<LoginEvent>();
  User? _user;

  Future<User?> getUser() async {
    if (_user != null) {
      return _user;
    } else {
      _user = User.empty;
    }
    return _user;
  }

  Future<void> save(LoginModelResponse response) async {
    _controller.add(const LoginSubmitted());
    _user = User(
        response.id!,
        response.username,
        response.authService,
        response.email,
        response.nickname,
        response.firstName,
        response.lastName);
  }

  Future<void> remove() async {
    _user = null;
  }
}
