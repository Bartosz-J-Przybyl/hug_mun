import 'package:equatable/equatable.dart';

class UserChannelCategoryResponse extends Equatable {
  const UserChannelCategoryResponse({
    required this.categories,
    required this.order,
  });

  final List<Category> categories;
  static const String categoriesKey = "categories";

  final List<String> order;
  static const String orderKey = "order";

  UserChannelCategoryResponse copyWith({
    List<Category>? categories,
    List<String>? order,
  }) {
    return UserChannelCategoryResponse(
      categories: categories ?? this.categories,
      order: order ?? this.order,
    );
  }

  factory UserChannelCategoryResponse.fromJson(Map<String, dynamic> json) {
    return UserChannelCategoryResponse(
      categories: json["categories"] == null
          ? []
          : List<Category>.from(
              json["categories"]!.map((x) => Category.fromJson(x))),
      order: json["order"] == null
          ? []
          : List<String>.from(json["order"]!.map((x) => x)),
    );
  }

  Map<String, dynamic> toJson() => {
        "categories": categories.map((x) => x.toJson()).toList(),
        "order": order.map((x) => x).toList(),
      };

  @override
  String toString() {
    return "$categories, $order, ";
  }

  @override
  List<Object?> get props => [
        categories,
        order,
      ];
}

class Category extends Equatable {
  const Category({
    required this.id,
    required this.userId,
    required this.teamId,
    required this.sortOrder,
    required this.sorting,
    required this.type,
    required this.displayName,
    required this.muted,
    required this.collapsed,
    required this.channelIds,
  });

  final String? id;
  static const String idKey = "id";

  final String? userId;
  static const String userIdKey = "user_id";

  final String? teamId;
  static const String teamIdKey = "team_id";

  final int? sortOrder;
  static const String sortOrderKey = "sort_order";

  final String? sorting;
  static const String sortingKey = "sorting";

  final String? type;
  static const String typeKey = "type";

  final String? displayName;
  static const String displayNameKey = "display_name";

  final bool? muted;
  static const String mutedKey = "muted";

  final bool? collapsed;
  static const String collapsedKey = "collapsed";

  final List<String> channelIds;
  static const String channelIdsKey = "channel_ids";

  Category copyWith({
    String? id,
    String? userId,
    String? teamId,
    int? sortOrder,
    String? sorting,
    String? type,
    String? displayName,
    bool? muted,
    bool? collapsed,
    List<String>? channelIds,
  }) {
    return Category(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      teamId: teamId ?? this.teamId,
      sortOrder: sortOrder ?? this.sortOrder,
      sorting: sorting ?? this.sorting,
      type: type ?? this.type,
      displayName: displayName ?? this.displayName,
      muted: muted ?? this.muted,
      collapsed: collapsed ?? this.collapsed,
      channelIds: channelIds ?? this.channelIds,
    );
  }

  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(
      id: json["id"],
      userId: json["user_id"],
      teamId: json["team_id"],
      sortOrder: json["sort_order"],
      sorting: json["sorting"],
      type: json["type"],
      displayName: json["display_name"],
      muted: json["muted"],
      collapsed: json["collapsed"],
      channelIds: json["channel_ids"] == null
          ? []
          : List<String>.from(json["channel_ids"]!.map((x) => x)),
    );
  }

  Map<String, dynamic> toJson() => {
        "id": id,
        "user_id": userId,
        "team_id": teamId,
        "sort_order": sortOrder,
        "sorting": sorting,
        "type": type,
        "display_name": displayName,
        "muted": muted,
        "collapsed": collapsed,
        "channel_ids": channelIds.map((x) => x).toList(),
      };

  @override
  String toString() {
    return "$id, $userId, $teamId, $sortOrder, $sorting, $type, $displayName, $muted, $collapsed, $channelIds, ";
  }

  @override
  List<Object?> get props => [
        id,
        userId,
        teamId,
        sortOrder,
        sorting,
        type,
        displayName,
        muted,
        collapsed,
        channelIds,
      ];
}
