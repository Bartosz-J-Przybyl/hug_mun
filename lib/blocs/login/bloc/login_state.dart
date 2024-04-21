part of 'login_bloc.dart';

class LoginState extends Equatable {
  final FormzStatus status;
  final Username username;
  final Password password;
  final Error error;

  const LoginState(
      {this.status = FormzStatus.pure,
      this.username = const Username.pure(),
      this.password = const Password.pure(),
      this.error = Error.empty});

  @override
  List<Object> get props => [status, username, password];

  LoginState copyWith(
          {FormzStatus? status,
          Username? username,
          Password? password,
          Error? error}) =>
      LoginState(
          status: status ?? this.status,
          username: username ?? this.username,
          password: password ?? this.password,
          error: error ?? this.error);

  bool hasError() {
    return error.id != null;
  }
}

class LoginInitial extends LoginState {}
