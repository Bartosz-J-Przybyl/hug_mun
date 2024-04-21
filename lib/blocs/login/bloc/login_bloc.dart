import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:formz/formz.dart';
import 'package:get_it/get_it.dart';
import 'package:hug_mun/api/exceptions/client_exception.dart';
import 'package:hug_mun/models/problem_detail.dart';
import 'package:hug_mun/models/values.dart';
import 'package:hug_mun/repositories/authentication_repository.dart';
import 'package:hug_mun/repositories/user_repository.dart';
import 'package:hug_mun/services/secure_store_service.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc({
    required AuthenticationRepository authenticationRepository,
    required UserRepository userRepository,
  })  : _authenticationRepository = authenticationRepository,
        _userRepository = userRepository,
        super(const LoginState()) {
    /// Try to authenticate using stored credentials
    add(const StoredCredentialLogin());
  }

  static const _storeKey = "localhost";

  final AuthenticationRepository _authenticationRepository;
  final UserRepository _userRepository;

  final _secureStoreService = GetIt.instance.get<SecureStoreService>();

  @override
  Stream<LoginState> mapEventToState(
    LoginEvent event,
  ) async* {
    switch (event) {
      case LoginUsernameChanged():
        yield _mapUsernameChangedToState(event, state);
      case LoginPasswordChanged():
        yield _mapPasswordChangedToState(event, state);
      case StoredCredentialLogin():
        yield* _mapStoredCredentialLoginToState(event, state);
      case LoginSubmitted():
        yield* _mapLoginSubmittedToState(event, state);
    }
  }

  LoginState _mapUsernameChangedToState(
    LoginUsernameChanged event,
    LoginState state,
  ) {
    final username = Username.dirty(event.username);
    return state.copyWith(
      username: username,
      status: Formz.validate([state.password, username]),
    );
  }

  LoginState _mapPasswordChangedToState(
    LoginPasswordChanged event,
    LoginState state,
  ) {
    final password = Password.dirty(event.password);
    return state.copyWith(
      password: password,
      status: Formz.validate([password, state.username]),
    );
  }

  Stream<LoginState> _mapStoredCredentialLoginToState(
    StoredCredentialLogin event,
    LoginState state,
  ) async* {
    yield* _processAuthentication(
        () async => await _secureStoreService.read(_storeKey),
        (data) => data != null,
        (_) async => {});
  }

  Stream<LoginState> _mapLoginSubmittedToState(
    LoginSubmitted event,
    LoginState state,
  ) async* {
    yield* _processAuthentication(() {
      final username = state.username.value;
      final password = state.password.value;
      return [username, password];
    },
        (_) => state.status.isValidated,
        (credentials) async =>
            await _secureStoreService.write(credentials, _storeKey));
  }

  Stream<LoginState> _processAuthentication(
      Function() getCredentials,
      Function(dynamic data) authenticationCondition,
      Function(List<String> credentials) onSuccess) async* {
    try {
      final credentials = await getCredentials();
      if (authenticationCondition(credentials)) {
        final username = credentials[0];
        final password = credentials[1];
        yield state.copyWith(status: FormzStatus.submissionInProgress);
        await _authenticationRepository.login(
          (user) async => await _userRepository.save(user),
          username: credentials[0],
          password: credentials[1],
        );
        await onSuccess([username, password]);
        yield state.copyWith(status: FormzStatus.submissionSuccess);
      } else {
        yield state.copyWith(status: FormzStatus.submissionCanceled);
      }
    } on ClientException catch (exception) {
      yield state.copyWith(
          status: FormzStatus.submissionFailure, error: Error.from(exception));
    } on Exception catch (_) {
      yield state.copyWith(status: FormzStatus.submissionFailure);
    }
  }
}
