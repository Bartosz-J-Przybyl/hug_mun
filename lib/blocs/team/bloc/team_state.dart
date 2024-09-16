part of 'team_bloc.dart';

class TeamState extends Equatable {
  final List<Team> teams;
  final List<TeamMember> teamMembers;

  static const List<Team> _defaultTeams = [];
  static const List<TeamMember> _defaultTeamMembers = [];

  const TeamState(
      {this.teams = _defaultTeams, this.teamMembers = _defaultTeamMembers});

  @override
  List<Object> get props => [];

  TeamState copyWith({List<Team>? teams, List<TeamMember>? teamMembers}) =>
      TeamState(
          teams: teams ?? this.teams,
          teamMembers: teamMembers ?? this.teamMembers);
}

class TeamInitial extends TeamState {}
