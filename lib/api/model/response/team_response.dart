import 'package:equatable/equatable.dart';

class TeamResponse extends Equatable {
  TeamResponse({
    required this.id,
    required this.createAt,
    required this.updateAt,
    required this.deleteAt,
    required this.displayName,
    required this.name,
    required this.description,
    required this.email,
    required this.type,
    required this.companyName,
    required this.allowedDomains,
    required this.inviteId,
    required this.allowOpenInvite,
    required this.schemeId,
    required this.groupConstrained,
    required this.cloudLimitsArchived,
  });

  final String? id;
  static const String idKey = "id";

  final int? createAt;
  static const String createAtKey = "create_at";

  final int? updateAt;
  static const String updateAtKey = "update_at";

  final int? deleteAt;
  static const String deleteAtKey = "delete_at";

  final String? displayName;
  static const String displayNameKey = "display_name";

  final String? name;
  static const String nameKey = "name";

  final String? description;
  static const String descriptionKey = "description";

  final String? email;
  static const String emailKey = "email";

  final String? type;
  static const String typeKey = "type";

  final String? companyName;
  static const String companyNameKey = "company_name";

  final String? allowedDomains;
  static const String allowedDomainsKey = "allowed_domains";

  final String? inviteId;
  static const String inviteIdKey = "invite_id";

  final bool? allowOpenInvite;
  static const String allowOpenInviteKey = "allow_open_invite";

  final String? schemeId;
  static const String schemeIdKey = "scheme_id";

  final bool? groupConstrained;
  static const String groupConstrainedKey = "group_constrained";

  final bool? cloudLimitsArchived;
  static const String cloudLimitsArchivedKey = "cloud_limits_archived";

  TeamResponse copyWith({
    String? id,
    int? createAt,
    int? updateAt,
    int? deleteAt,
    String? displayName,
    String? name,
    String? description,
    String? email,
    String? type,
    String? companyName,
    String? allowedDomains,
    String? inviteId,
    bool? allowOpenInvite,
    String? schemeId,
    bool? groupConstrained,
    bool? cloudLimitsArchived,
  }) {
    return TeamResponse(
      id: id ?? this.id,
      createAt: createAt ?? this.createAt,
      updateAt: updateAt ?? this.updateAt,
      deleteAt: deleteAt ?? this.deleteAt,
      displayName: displayName ?? this.displayName,
      name: name ?? this.name,
      description: description ?? this.description,
      email: email ?? this.email,
      type: type ?? this.type,
      companyName: companyName ?? this.companyName,
      allowedDomains: allowedDomains ?? this.allowedDomains,
      inviteId: inviteId ?? this.inviteId,
      allowOpenInvite: allowOpenInvite ?? this.allowOpenInvite,
      schemeId: schemeId ?? this.schemeId,
      groupConstrained: groupConstrained ?? this.groupConstrained,
      cloudLimitsArchived: cloudLimitsArchived ?? this.cloudLimitsArchived,
    );
  }

  factory TeamResponse.fromJson(Map<String, dynamic> json) {
    return TeamResponse(
      id: json["id"],
      createAt: json["create_at"],
      updateAt: json["update_at"],
      deleteAt: json["delete_at"],
      displayName: json["display_name"],
      name: json["name"],
      description: json["description"],
      email: json["email"],
      type: json["type"],
      companyName: json["company_name"],
      allowedDomains: json["allowed_domains"],
      inviteId: json["invite_id"],
      allowOpenInvite: json["allow_open_invite"],
      schemeId: json["scheme_id"],
      groupConstrained: json["group_constrained"],
      cloudLimitsArchived: json["cloud_limits_archived"],
    );
  }

  Map<String, dynamic> toJson() => {
        "id": id,
        "create_at": createAt,
        "update_at": updateAt,
        "delete_at": deleteAt,
        "display_name": displayName,
        "name": name,
        "description": description,
        "email": email,
        "type": type,
        "company_name": companyName,
        "allowed_domains": allowedDomains,
        "invite_id": inviteId,
        "allow_open_invite": allowOpenInvite,
        "scheme_id": schemeId,
        "group_constrained": groupConstrained,
        "cloud_limits_archived": cloudLimitsArchived,
      };

  @override
  String toString() {
    return "$id, $createAt, $updateAt, $deleteAt, $displayName, $name, $description, $email, $type, $companyName, $allowedDomains, $inviteId, $allowOpenInvite, $schemeId, $groupConstrained, $cloudLimitsArchived, ";
  }

  @override
  List<Object?> get props => [
        id,
        createAt,
        updateAt,
        deleteAt,
        displayName,
        name,
        description,
        email,
        type,
        companyName,
        allowedDomains,
        inviteId,
        allowOpenInvite,
        schemeId,
        groupConstrained,
        cloudLimitsArchived,
      ];
}
