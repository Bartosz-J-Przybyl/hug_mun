import 'package:equatable/equatable.dart';

class User extends Equatable {
  final String id;
  final String? username;
  final String? authData;
  final String? authService;
  final String? email;
  final String? nickname;
  final String? firstName;
  final String? lastName;

  const User(
    this.id,
    this.username,
    this.authData,
    this.authService,
    this.email,
    this.nickname,
    this.firstName,
    this.lastName,
  );

  @override
  List<Object> get props {
    return [id];
  }

  static const empty = User('-', null, null, null, null, null, null, null);
}
