import 'package:equatable/equatable.dart';

class User extends Equatable {
  final String id;
  final String? username;
  final String? auth_data;
  final String? auth_service;
  final String? email;
  final String? nickname;
  final String? first_name;
  final String? last_name;

  const User(this.id, this.username, this.auth_data, this.auth_service,
      this.email, this.nickname, this.first_name, this.last_name);

  @override
  List<Object> get props {
    return [id];
  }

  static const empty = User('-', null, null, null, null, null, null, null);
}
