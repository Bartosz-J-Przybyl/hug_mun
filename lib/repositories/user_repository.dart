import 'dart:async';

import 'package:hug_mun/api/model/response/LoginResponseModel.dart';
import 'package:hug_mun/blocs/login/bloc/login_bloc.dart';
import 'package:hug_mun/models/user.dart';

class UserRepository {
  final _controller = StreamController<LoginEvent>();
  User? _user;

  Future<User?> getUser() async {
    if (_user != null) {
      return _user;
    }
    _user = User.empty;
    return _user;
  }

  Future<void> save(LoginModelResponse response) async {
    _controller.add(const LoginSubmitted());
    _user = User(
        response.id!,
        response.username,
        response.auth_data,
        response.auth_service,
        response.email,
        response.nickname,
        response.first_name,
        response.last_name);
  }

  Future<void> remove() async {
    _user = null;
  }
}
