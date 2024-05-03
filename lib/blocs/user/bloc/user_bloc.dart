import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:hug_mun/models/user.dart';
import 'package:hug_mun/repositories/authentication_repository.dart';
import 'package:hug_mun/repositories/user_repository.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc({
    required AuthenticationRepository authenticationRepository,
    required UserRepository userRepository,
  }) : super(const UserInitial()) {}

  @override
  Stream<UserState> mapEventToState(
    UserEvent event,
  ) async* {
    switch (event) {
      case UserAuthenticatedChanged():
        yield* _mapUserAuthenticatedChangedToState(event, state);
    }
  }

  Stream<UserState> _mapUserAuthenticatedChangedToState(
    UserAuthenticatedChanged event,
    UserState state,
  ) async* {
    state.copyWith(me: event.user);
    yield state;
  }
}
