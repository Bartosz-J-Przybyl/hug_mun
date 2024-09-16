import 'package:equatable/equatable.dart';

class Channel extends Equatable {
  const Channel({
    required this.id,
    required this.teamId,
    required this.type,
    required this.displayName,
    required this.name,
    required this.header,
    required this.purpose,
    required this.lastPostAt,
    required this.totalMsgCount,
    required this.extraUpdateAt,
    required this.creatorId,
  });

  final String? id;
  static const String idKey = "id";

  final String? teamId;
  static const String teamIdKey = "team_id";

  final String? type;
  static const String typeKey = "type";

  final String? displayName;
  static const String displayNameKey = "display_name";

  final String? name;
  static const String nameKey = "name";

  final String? header;
  static const String headerKey = "header";

  final String? purpose;
  static const String purposeKey = "purpose";

  final int? lastPostAt;
  static const String lastPostAtKey = "last_post_at";

  final int? totalMsgCount;
  static const String totalMsgCountKey = "total_msg_count";

  final int? extraUpdateAt;
  static const String extraUpdateAtKey = "extra_update_at";

  final String? creatorId;
  static const String creatorIdKey = "creator_id";

  Channel copyWith({
    String? id,
    int? createAt,
    int? updateAt,
    int? deleteAt,
    String? teamId,
    String? type,
    String? displayName,
    String? name,
    String? header,
    String? purpose,
    int? lastPostAt,
    int? totalMsgCount,
    int? extraUpdateAt,
    String? creatorId,
  }) =>
      Channel(
        id: id ?? this.id,
        teamId: teamId ?? this.teamId,
        type: type ?? this.type,
        displayName: displayName ?? this.displayName,
        name: name ?? this.name,
        header: header ?? this.header,
        purpose: purpose ?? this.purpose,
        lastPostAt: lastPostAt ?? this.lastPostAt,
        totalMsgCount: totalMsgCount ?? this.totalMsgCount,
        extraUpdateAt: extraUpdateAt ?? this.extraUpdateAt,
        creatorId: creatorId ?? this.creatorId,
      );

  @override
  String toString() {
    return "$id, $teamId, $type, $displayName, $name, $header, $purpose, $lastPostAt, $totalMsgCount, $extraUpdateAt, $creatorId, ";
  }

  @override
  List<Object?> get props => [
        id,
        teamId,
        type,
        displayName,
        name,
        header,
        purpose,
        lastPostAt,
        totalMsgCount,
        extraUpdateAt,
        creatorId,
      ];
}
