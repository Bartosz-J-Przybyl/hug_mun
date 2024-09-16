import 'package:equatable/equatable.dart';
import 'package:hug_mun/api/model/response/notify_props.dart';

class UserChannelMemberResponse extends Equatable {
  const UserChannelMemberResponse({
    required this.channelId,
    required this.userId,
    required this.roles,
    required this.lastViewedAt,
    required this.msgCount,
    required this.mentionCount,
    required this.mentionCountRoot,
    required this.urgentMentionCount,
    required this.msgCountRoot,
    required this.notifyProps,
    required this.lastUpdateAt,
    required this.schemeGuest,
    required this.schemeUser,
    required this.schemeAdmin,
    required this.explicitRoles,
    required this.teamDisplayName,
    required this.teamName,
    required this.teamUpdateAt,
  });

  final String? channelId;
  static const String channelIdKey = "channel_id";

  final String? userId;
  static const String userIdKey = "user_id";

  final String? roles;
  static const String rolesKey = "roles";

  final int? lastViewedAt;
  static const String lastViewedAtKey = "last_viewed_at";

  final int? msgCount;
  static const String msgCountKey = "msg_count";

  final int? mentionCount;
  static const String mentionCountKey = "mention_count";

  final int? mentionCountRoot;
  static const String mentionCountRootKey = "mention_count_root";

  final int? urgentMentionCount;
  static const String urgentMentionCountKey = "urgent_mention_count";

  final int? msgCountRoot;
  static const String msgCountRootKey = "msg_count_root";

  final NotifyProps? notifyProps;
  static const String notifyPropsKey = "notify_props";

  final int? lastUpdateAt;
  static const String lastUpdateAtKey = "last_update_at";

  final bool? schemeGuest;
  static const String schemeGuestKey = "scheme_guest";

  final bool? schemeUser;
  static const String schemeUserKey = "scheme_user";

  final bool? schemeAdmin;
  static const String schemeAdminKey = "scheme_admin";

  final String? explicitRoles;
  static const String explicitRolesKey = "explicit_roles";

  final String? teamDisplayName;
  static const String teamDisplayNameKey = "team_display_name";

  final String? teamName;
  static const String teamNameKey = "team_name";

  final int? teamUpdateAt;
  static const String teamUpdateAtKey = "team_update_at";

  UserChannelMemberResponse copyWith({
    String? channelId,
    String? userId,
    String? roles,
    int? lastViewedAt,
    int? msgCount,
    int? mentionCount,
    int? mentionCountRoot,
    int? urgentMentionCount,
    int? msgCountRoot,
    NotifyProps? notifyProps,
    int? lastUpdateAt,
    bool? schemeGuest,
    bool? schemeUser,
    bool? schemeAdmin,
    String? explicitRoles,
    String? teamDisplayName,
    String? teamName,
    int? teamUpdateAt,
  }) {
    return UserChannelMemberResponse(
      channelId: channelId ?? this.channelId,
      userId: userId ?? this.userId,
      roles: roles ?? this.roles,
      lastViewedAt: lastViewedAt ?? this.lastViewedAt,
      msgCount: msgCount ?? this.msgCount,
      mentionCount: mentionCount ?? this.mentionCount,
      mentionCountRoot: mentionCountRoot ?? this.mentionCountRoot,
      urgentMentionCount: urgentMentionCount ?? this.urgentMentionCount,
      msgCountRoot: msgCountRoot ?? this.msgCountRoot,
      notifyProps: notifyProps ?? this.notifyProps,
      lastUpdateAt: lastUpdateAt ?? this.lastUpdateAt,
      schemeGuest: schemeGuest ?? this.schemeGuest,
      schemeUser: schemeUser ?? this.schemeUser,
      schemeAdmin: schemeAdmin ?? this.schemeAdmin,
      explicitRoles: explicitRoles ?? this.explicitRoles,
      teamDisplayName: teamDisplayName ?? this.teamDisplayName,
      teamName: teamName ?? this.teamName,
      teamUpdateAt: teamUpdateAt ?? this.teamUpdateAt,
    );
  }

  factory UserChannelMemberResponse.fromJson(Map<String, dynamic> json) {
    return UserChannelMemberResponse(
      channelId: json["channel_id"],
      userId: json["user_id"],
      roles: json["roles"],
      lastViewedAt: json["last_viewed_at"],
      msgCount: json["msg_count"],
      mentionCount: json["mention_count"],
      mentionCountRoot: json["mention_count_root"],
      urgentMentionCount: json["urgent_mention_count"],
      msgCountRoot: json["msg_count_root"],
      notifyProps: json["notify_props"] == null
          ? null
          : NotifyProps.fromJson(json["notify_props"]),
      lastUpdateAt: json["last_update_at"],
      schemeGuest: json["scheme_guest"],
      schemeUser: json["scheme_user"],
      schemeAdmin: json["scheme_admin"],
      explicitRoles: json["explicit_roles"],
      teamDisplayName: json["team_display_name"],
      teamName: json["team_name"],
      teamUpdateAt: json["team_update_at"],
    );
  }

  Map<String, dynamic> toJson() => {
        "channel_id": channelId,
        "user_id": userId,
        "roles": roles,
        "last_viewed_at": lastViewedAt,
        "msg_count": msgCount,
        "mention_count": mentionCount,
        "mention_count_root": mentionCountRoot,
        "urgent_mention_count": urgentMentionCount,
        "msg_count_root": msgCountRoot,
        "notify_props": notifyProps?.toJson(),
        "last_update_at": lastUpdateAt,
        "scheme_guest": schemeGuest,
        "scheme_user": schemeUser,
        "scheme_admin": schemeAdmin,
        "explicit_roles": explicitRoles,
        "team_display_name": teamDisplayName,
        "team_name": teamName,
        "team_update_at": teamUpdateAt,
      };

  @override
  String toString() {
    return "$channelId, $userId, $roles, $lastViewedAt, $msgCount, $mentionCount, $mentionCountRoot, $urgentMentionCount, $msgCountRoot, $notifyProps, $lastUpdateAt, $schemeGuest, $schemeUser, $schemeAdmin, $explicitRoles, $teamDisplayName, $teamName, $teamUpdateAt, ";
  }

  @override
  List<Object?> get props => [
        channelId,
        userId,
        roles,
        lastViewedAt,
        msgCount,
        mentionCount,
        mentionCountRoot,
        urgentMentionCount,
        msgCountRoot,
        notifyProps,
        lastUpdateAt,
        schemeGuest,
        schemeUser,
        schemeAdmin,
        explicitRoles,
        teamDisplayName,
        teamName,
        teamUpdateAt,
      ];
}
