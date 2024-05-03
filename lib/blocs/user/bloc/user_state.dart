part of 'user_bloc.dart';

class UserState extends Equatable {
  final User? me;

  const UserState({required this.me});

  @override
  List<Object> get props => [];

  UserState copyWith({User? me}) => UserState(me: me);
}

class UserInitial extends UserState {
  const UserInitial({super.me});
}
