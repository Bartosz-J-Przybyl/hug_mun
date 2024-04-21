import 'package:equatable/equatable.dart';

class ChannelResponse extends Equatable {
  const ChannelResponse({
    required this.id,
    required this.createAt,
    required this.updateAt,
    required this.deleteAt,
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

  final int? createAt;
  static const String createAtKey = "create_at";

  final int? updateAt;
  static const String updateAtKey = "update_at";

  final int? deleteAt;
  static const String deleteAtKey = "delete_at";

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

  ChannelResponse copyWith({
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
      ChannelResponse(
        id: id ?? this.id,
        createAt: createAt ?? this.createAt,
        updateAt: updateAt ?? this.updateAt,
        deleteAt: deleteAt ?? this.deleteAt,
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

  factory ChannelResponse.fromJson(Map<String, dynamic> json) =>
      ChannelResponse(
        id: json["id"],
        createAt: json["create_at"],
        updateAt: json["update_at"],
        deleteAt: json["delete_at"],
        teamId: json["team_id"],
        type: json["type"],
        displayName: json["display_name"],
        name: json["name"],
        header: json["header"],
        purpose: json["purpose"],
        lastPostAt: json["last_post_at"],
        totalMsgCount: json["total_msg_count"],
        extraUpdateAt: json["extra_update_at"],
        creatorId: json["creator_id"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "create_at": createAt,
        "update_at": updateAt,
        "delete_at": deleteAt,
        "team_id": teamId,
        "type": type,
        "display_name": displayName,
        "name": name,
        "header": header,
        "purpose": purpose,
        "last_post_at": lastPostAt,
        "total_msg_count": totalMsgCount,
        "extra_update_at": extraUpdateAt,
        "creator_id": creatorId,
      };

  @override
  String toString() {
    return "$id, $createAt, $updateAt, $deleteAt, $teamId, $type, $displayName, $name, $header, $purpose, $lastPostAt, $totalMsgCount, $extraUpdateAt, $creatorId, ";
  }

  @override
  List<Object?> get props => [
        id,
        createAt,
        updateAt,
        deleteAt,
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
