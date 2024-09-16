import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:hug_mun/models/team.dart';
import 'package:hug_mun/models/team_member.dart';
import 'package:hug_mun/repositories/authentication_repository.dart';

part 'team_event.dart';
part 'team_state.dart';

class TeamBloc extends Bloc<TeamEvent, TeamState> {
  TeamBloc({
    required AuthenticationRepository authenticationRepository,
  }) : super(TeamInitial());

  @override
  Stream<TeamState> mapEventToState(
    TeamEvent event,
  ) async* {
    switch (event) {
      case TeamsChanged():
        yield* _mapTeamsChangedToState(event, state);
      case TeamMembersChanged():
        yield* _mapTeamMembersChangedToState(event, state);
    }
  }

  Stream<TeamState> _mapTeamsChangedToState(
    TeamsChanged event,
    TeamState state,
  ) async* {
    state.copyWith(teams: event.teams);
    yield state;
  }

  Stream<TeamState> _mapTeamMembersChangedToState(
    TeamMembersChanged event,
    TeamState state,
  ) async* {
    state.copyWith(teamMembers: event.teamMembers);
    yield state;
  }
}
