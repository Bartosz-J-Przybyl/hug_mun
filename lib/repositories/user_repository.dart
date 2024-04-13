
import 'dart:async';
import 'package:hug_mun/models/user.dart';

class UserRepository {
  User? _user;

  Future<User?> getUser() async {
    if (_user != null) {
      return _user;
    }
    return Future.delayed(
      Duration(milliseconds: 300),
          () => _user = User.empty,
    );
  }
}