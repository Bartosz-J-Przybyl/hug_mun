class ChannelResponse {
  String? id;
  double? createAt;
  double? updateAt;
  double? deleteAt;
  String? teamId;
  String? type;
  String? displayName;
  String? name;
  String? header;
  String? purpose;
  double? lastPostAt;
  double? totalMsgCount;
  double? extraUpdateAt;
  String? creatorId;
  String? schemaId;
  String? teamDisplayName;
  String? teamName;
  double? teamUpdateAt;
  String? policyId;

  ChannelResponse.fromJson(Map<String, dynamic> json) {
    id = json['id'] as String?;
    createAt = json['create_at'] as double?;
    updateAt = json['update_at'] as double?;
    deleteAt = json['delete_at'] as double?;
    teamId = json['team_id'] as String?;
    type = json['type'] as String?;
    displayName = json['display_name'] as String?;
    name = json['name'] as String?;
    header = json['header'] as String?;
    purpose = json['purpose'] as String?;
    lastPostAt = json['last_post_at'] as double?;
    totalMsgCount = json['total_msg_count'] as double?;
    extraUpdateAt = json['extra_update_at'] as double?;
    creatorId = json['creator_id'] as String?;
    schemaId = json['schema_id'] as String?;
    teamDisplayName = json['team_display_name'] as String?;
    teamName = json['team_name'] as String?;
    teamUpdateAt = json['team_update_at'] as double?;
    policyId = json['policy_id'] as String?;
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'create_at': createAt,
        'update_at': updateAt,
        'delete_at': deleteAt,
        'team_id': teamId,
        'type': type,
        'display_name': displayName,
        'name': name,
        'header': header,
        'purpose': purpose,
        'last_post_at': lastPostAt,
        'total_msg_count': totalMsgCount,
        'extra_update_at': extraUpdateAt,
        'creator_id': creatorId,
        'schema_id': schemaId,
        'team_display_name': teamDisplayName,
        'team_name': teamName,
        'team_update_at': teamUpdateAt,
        'policy_id': policyId,
      };

  ChannelResponse(
      {required this.id,
      this.createAt,
      this.updateAt,
      this.deleteAt,
      this.teamId,
      this.type,
      this.displayName,
      this.name,
      this.header,
      this.purpose,
      this.lastPostAt,
      this.totalMsgCount,
      this.extraUpdateAt,
      this.creatorId,
      this.schemaId,
      this.teamDisplayName,
      this.teamName,
      this.teamUpdateAt,
      this.policyId});
}
