import 'package:equatable/equatable.dart';

class TeamMember extends Equatable {
  const TeamMember(
      {required this.id,
      required this.displayName,
      required this.name,
      required this.description,
      required this.email,
      required this.type,
      required this.inviteId});

  final String? id;
  static const String idKey = "id";

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

  final String? inviteId;
  static const String inviteIdKey = "invite_id";

  TeamMember copyWith({
    String? id,
    String? displayName,
    String? name,
    String? description,
    String? email,
    String? type,
    String? inviteId,
  }) =>
      TeamMember(
        id: id ?? this.id,
        displayName: displayName ?? this.displayName,
        name: name ?? this.name,
        description: description ?? this.description,
        email: email ?? this.email,
        type: type ?? this.type,
        inviteId: inviteId ?? this.inviteId,
      );

  factory TeamMember.fromJson(Map<String, dynamic> json) => TeamMember(
        id: json["id"],
        displayName: json["display_name"],
        name: json["name"],
        description: json["description"],
        email: json["email"],
        type: json["type"],
        inviteId: json["invite_id"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "display_name": displayName,
        "name": name,
        "description": description,
        "email": email,
        "type": type,
        "invite_id": inviteId,
      };

  @override
  String toString() =>
      "$id, $displayName, $name, $description, $email, $type, $inviteId, ";

  @override
  List<Object?> get props => [
        id,
        displayName,
        name,
        description,
        email,
        type,
        inviteId,
      ];
}
