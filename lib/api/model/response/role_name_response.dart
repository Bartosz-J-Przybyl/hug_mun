import 'package:equatable/equatable.dart';

class RoleNameResponse extends Equatable {
  const RoleNameResponse({
    required this.id,
    required this.name,
    required this.displayName,
    required this.description,
    required this.createAt,
    required this.updateAt,
    required this.deleteAt,
    required this.permissions,
    required this.schemeManaged,
    required this.builtIn,
  });

  final String? id;
  static const String idKey = "id";

  final String? name;
  static const String nameKey = "name";

  final String? displayName;
  static const String displayNameKey = "display_name";

  final String? description;
  static const String descriptionKey = "description";

  final int? createAt;
  static const String createAtKey = "create_at";

  final int? updateAt;
  static const String updateAtKey = "update_at";

  final int? deleteAt;
  static const String deleteAtKey = "delete_at";

  final List<String> permissions;
  static const String permissionsKey = "permissions";

  final bool? schemeManaged;
  static const String schemeManagedKey = "scheme_managed";

  final bool? builtIn;
  static const String builtInKey = "built_in";

  RoleNameResponse copyWith({
    String? id,
    String? name,
    String? displayName,
    String? description,
    int? createAt,
    int? updateAt,
    int? deleteAt,
    List<String>? permissions,
    bool? schemeManaged,
    bool? builtIn,
  }) =>
      RoleNameResponse(
        id: id ?? this.id,
        name: name ?? this.name,
        displayName: displayName ?? this.displayName,
        description: description ?? this.description,
        createAt: createAt ?? this.createAt,
        updateAt: updateAt ?? this.updateAt,
        deleteAt: deleteAt ?? this.deleteAt,
        permissions: permissions ?? this.permissions,
        schemeManaged: schemeManaged ?? this.schemeManaged,
        builtIn: builtIn ?? this.builtIn,
      );

  factory RoleNameResponse.fromJson(Map<String, dynamic> json) =>
      RoleNameResponse(
        id: json["id"],
        name: json["name"],
        displayName: json["display_name"],
        description: json["description"],
        createAt: json["create_at"],
        updateAt: json["update_at"],
        deleteAt: json["delete_at"],
        permissions: json["permissions"] == null
            ? []
            : List<String>.from(json["permissions"]!.map((x) => x)),
        schemeManaged: json["scheme_managed"],
        builtIn: json["built_in"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "display_name": displayName,
        "description": description,
        "create_at": createAt,
        "update_at": updateAt,
        "delete_at": deleteAt,
        "permissions": permissions.map((x) => x).toList(),
        "scheme_managed": schemeManaged,
        "built_in": builtIn,
      };

  @override
  String toString() =>
      "$id, $name, $displayName, $description, $createAt, $updateAt, $deleteAt, $permissions, $schemeManaged, $builtIn, ";

  @override
  List<Object?> get props => [
        id,
        name,
        displayName,
        description,
        createAt,
        updateAt,
        deleteAt,
        permissions,
        schemeManaged,
        builtIn,
      ];
}
