import 'package:equatable/equatable.dart';

class ChannelPost extends Equatable {
  const ChannelPost({
    required this.order,
    required this.posts,
    required this.nextPostId,
    required this.prevPostId,
    required this.hasNext,
    required this.firstInaccessiblePostTime,
  });

  final List<String> order;
  static const String orderKey = "order";

  final Map<String, Post> posts;
  static const String postsKey = "posts";

  final String? nextPostId;
  static const String nextPostIdKey = "next_post_id";

  final String? prevPostId;
  static const String prevPostIdKey = "prev_post_id";

  final bool? hasNext;
  static const String hasNextKey = "has_next";

  final int? firstInaccessiblePostTime;
  static const String firstInaccessiblePostTimeKey =
      "first_inaccessible_post_time";

  ChannelPost copyWith({
    List<String>? order,
    Map<String, Post>? posts,
    String? nextPostId,
    String? prevPostId,
    bool? hasNext,
    int? firstInaccessiblePostTime,
  }) {
    return ChannelPost(
      order: order ?? this.order,
      posts: posts ?? this.posts,
      nextPostId: nextPostId ?? this.nextPostId,
      prevPostId: prevPostId ?? this.prevPostId,
      hasNext: hasNext ?? this.hasNext,
      firstInaccessiblePostTime:
          firstInaccessiblePostTime ?? this.firstInaccessiblePostTime,
    );
  }

  @override
  String toString() {
    return "$order, $posts, $nextPostId, $prevPostId, $hasNext, $firstInaccessiblePostTime, ";
  }

  @override
  List<Object?> get props => [
        order,
        posts,
        nextPostId,
        prevPostId,
        hasNext,
        firstInaccessiblePostTime,
      ];
}

class Post extends Equatable {
  const Post({
    required this.id,
    required this.createAt,
    required this.updateAt,
    required this.editAt,
    required this.deleteAt,
    required this.isPinned,
    required this.userId,
    required this.channelId,
    required this.rootId,
    required this.originalId,
    required this.message,
    required this.type,
    required this.hashtags,
    required this.pendingPostId,
    required this.replyCount,
    required this.lastReplyAt,
    required this.metadata,
  });

  final String? id;
  static const String idKey = "id";

  final int? createAt;
  static const String createAtKey = "create_at";

  final int? updateAt;
  static const String updateAtKey = "update_at";

  final int? editAt;
  static const String editAtKey = "edit_at";

  final int? deleteAt;
  static const String deleteAtKey = "delete_at";

  final bool? isPinned;
  static const String isPinnedKey = "is_pinned";

  final String? userId;
  static const String userIdKey = "user_id";

  final String? channelId;
  static const String channelIdKey = "channel_id";

  final String? rootId;
  static const String rootIdKey = "root_id";

  final String? originalId;
  static const String originalIdKey = "original_id";

  final String? message;
  static const String messageKey = "message";

  final String? type;
  static const String typeKey = "type";

  final String? hashtags;
  static const String hashtagsKey = "hashtags";

  final String? pendingPostId;
  static const String pendingPostIdKey = "pending_post_id";

  final int? replyCount;
  static const String replyCountKey = "reply_count";

  final int? lastReplyAt;
  static const String lastReplyAtKey = "last_reply_at";

  final Metadata? metadata;
  static const String metadataKey = "metadata";

  Post copyWith({
    String? id,
    int? createAt,
    int? updateAt,
    int? editAt,
    int? deleteAt,
    bool? isPinned,
    String? userId,
    String? channelId,
    String? rootId,
    String? originalId,
    String? message,
    String? type,
    String? hashtags,
    String? pendingPostId,
    int? replyCount,
    int? lastReplyAt,
    Metadata? metadata,
  }) {
    return Post(
      id: id ?? this.id,
      createAt: createAt ?? this.createAt,
      updateAt: updateAt ?? this.updateAt,
      editAt: editAt ?? this.editAt,
      deleteAt: deleteAt ?? this.deleteAt,
      isPinned: isPinned ?? this.isPinned,
      userId: userId ?? this.userId,
      channelId: channelId ?? this.channelId,
      rootId: rootId ?? this.rootId,
      originalId: originalId ?? this.originalId,
      message: message ?? this.message,
      type: type ?? this.type,
      hashtags: hashtags ?? this.hashtags,
      pendingPostId: pendingPostId ?? this.pendingPostId,
      replyCount: replyCount ?? this.replyCount,
      lastReplyAt: lastReplyAt ?? this.lastReplyAt,
      metadata: metadata ?? this.metadata,
    );
  }

  @override
  String toString() {
    return "$id, $createAt, $updateAt, $editAt, $deleteAt, $isPinned, $userId, $channelId, $rootId, $originalId, $message, $type, $props, $hashtags, $pendingPostId, $replyCount, $lastReplyAt, $metadata, ";
  }

  @override
  List<Object?> get props => [
        id,
        createAt,
        updateAt,
        editAt,
        deleteAt,
        isPinned,
        userId,
        channelId,
        rootId,
        originalId,
        message,
        type,
        props,
        hashtags,
        pendingPostId,
        replyCount,
        lastReplyAt,
        metadata,
      ];
}

class Metadata extends Equatable {
  const Metadata({required this.json});

  final Map<String, dynamic> json;

  factory Metadata.fromJson(Map<String, dynamic> json) => Metadata(json: json);

  Map<String, dynamic> toJson() => {};

  @override
  String toString() {
    return "";
  }

  @override
  List<Object?> get props => [];
}
