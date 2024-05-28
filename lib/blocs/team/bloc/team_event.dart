part of 'team_bloc.dart';

abstract class TeamEvent extends Equatable {
  const TeamEvent();

  @override
  List<Object> get props => [];
}

class TeamsChanged extends TeamEvent {
  final List<Team> teams;

  const TeamsChanged({required this.teams});

  @override
  List<Object> get props => [teams];
}

class TeamMembersChanged extends TeamEvent {
  final List<TeamMember> teamMembers;

  const TeamMembersChanged({required this.teamMembers});

  @override
  List<Object> get props => [teamMembers];
}
