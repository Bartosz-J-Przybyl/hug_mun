class TeamResponse {
  String? id;
  double? createAt;
  double? updateAt;
  double? deleteAt;
  String? displayName;
  String? name;
  String? description;
  String? email;
  String? type;
  String? companyName;
  String? allowedDomains;
  String? inviteId;
  bool? allowOpenInvite;
  String? schemeId;
  bool? groupConstrained;
  bool? cloudLimitsArchived;

  TeamResponse(
      {required this.id,
      this.createAt,
      this.updateAt,
      this.deleteAt,
      this.displayName,
      this.name,
      this.description,
      this.email,
      this.type,
      this.companyName,
      this.allowedDomains,
      this.inviteId,
      this.allowOpenInvite,
      this.schemeId,
      this.groupConstrained,
      this.cloudLimitsArchived});

  TeamResponse.fromJson(Map<String, dynamic> json) {
    id = json['id'] as String?;
    createAt = json['create_at'] as double?;
    updateAt = json['update_at'] as double?;
    deleteAt = json['delete_at'] as double?;
    displayName = json['display_name'] as String?;
    name = json['name'] as String?;
    description = json['description'] as String?;
    email = json['email'] as String?;
    type = json['type'] as String?;
    companyName = json['company_name'] as String?;
    allowedDomains = json['allowed_domains'] as String?;
    inviteId = json['invite_id'] as String?;
    allowOpenInvite = json['allow_open_invite'] as bool?;
    schemeId = json['scheme_id'] as String?;
    groupConstrained = json['group_constrained'] as bool?;
    cloudLimitsArchived = json['cloud_limits_archived'] as bool?;
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'create_at': createAt,
        'update_at': updateAt,
        'delete_at': deleteAt,
        'display_name': displayName,
        'name': name,
        'description': description,
        'email': email,
        'type': type,
        'company_name': companyName,
        'allowed_domains': allowedDomains,
        'invite_id': inviteId,
        'allow_open_invite': allowOpenInvite,
        'scheme_id': schemeId,
        'group_constrained': groupConstrained,
        'cloud_limits_archived': cloudLimitsArchived,
      };
}
