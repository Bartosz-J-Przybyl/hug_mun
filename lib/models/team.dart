import 'package:equatable/equatable.dart';

class Team extends Equatable {
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

  const Team(
      {required this.id,
      required this.displayName,
      required this.name,
      required this.description,
      required this.email,
      required this.type});

  Team copyWith({
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
  }) =>
      Team(
        id: id ?? this.id,
        displayName: displayName ?? this.displayName,
        name: name ?? this.name,
        description: description ?? this.description,
        email: email ?? this.email,
        type: type ?? this.type,
      );

  @override
  List<Object?> get props => [
        id,
        displayName,
        name,
        description,
        email,
        type,
      ];
}
