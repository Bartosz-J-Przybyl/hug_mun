import 'package:equatable/equatable.dart';

class NotifyProps extends Equatable {
  const NotifyProps({
    required this.channel,
    required this.comments,
    required this.desktop,
    required this.desktopSound,
    required this.desktopThreads,
    required this.email,
    required this.emailThreads,
    required this.firstName,
    required this.mentionKeys,
    required this.push,
    required this.pushStatus,
    required this.pushThreads,
  });

  final String? channel;
  static const String channelKey = "channel";

  final String? comments;
  static const String commentsKey = "comments";

  final String? desktop;
  static const String desktopKey = "desktop";

  final String? desktopSound;
  static const String desktopSoundKey = "desktop_sound";

  final String? desktopThreads;
  static const String desktopThreadsKey = "desktop_threads";

  final String? email;
  static const String emailKey = "email";

  final String? emailThreads;
  static const String emailThreadsKey = "email_threads";

  final String? firstName;
  static const String firstNameKey = "first_name";

  final String? mentionKeys;
  static const String mentionKeysKey = "mention_keys";

  final String? push;
  static const String pushKey = "push";

  final String? pushStatus;
  static const String pushStatusKey = "push_status";

  final String? pushThreads;
  static const String pushThreadsKey = "push_threads";

  NotifyProps copyWith({
    String? channel,
    String? comments,
    String? desktop,
    String? desktopSound,
    String? desktopThreads,
    String? email,
    String? emailThreads,
    String? firstName,
    String? mentionKeys,
    String? push,
    String? pushStatus,
    String? pushThreads,
  }) {
    return NotifyProps(
      channel: channel ?? this.channel,
      comments: comments ?? this.comments,
      desktop: desktop ?? this.desktop,
      desktopSound: desktopSound ?? this.desktopSound,
      desktopThreads: desktopThreads ?? this.desktopThreads,
      email: email ?? this.email,
      emailThreads: emailThreads ?? this.emailThreads,
      firstName: firstName ?? this.firstName,
      mentionKeys: mentionKeys ?? this.mentionKeys,
      push: push ?? this.push,
      pushStatus: pushStatus ?? this.pushStatus,
      pushThreads: pushThreads ?? this.pushThreads,
    );
  }

  factory NotifyProps.fromJson(Map<String, dynamic> json) {
    return NotifyProps(
      channel: json["channel"],
      comments: json["comments"],
      desktop: json["desktop"],
      desktopSound: json["desktop_sound"],
      desktopThreads: json["desktop_threads"],
      email: json["email"],
      emailThreads: json["email_threads"],
      firstName: json["first_name"],
      mentionKeys: json["mention_keys"],
      push: json["push"],
      pushStatus: json["push_status"],
      pushThreads: json["push_threads"],
    );
  }

  Map<String, dynamic> toJson() => {
        "channel": channel,
        "comments": comments,
        "desktop": desktop,
        "desktop_sound": desktopSound,
        "desktop_threads": desktopThreads,
        "email": email,
        "email_threads": emailThreads,
        "first_name": firstName,
        "mention_keys": mentionKeys,
        "push": push,
        "push_status": pushStatus,
        "push_threads": pushThreads,
      };

  @override
  String toString() {
    return "$channel, $comments, $desktop, $desktopSound, $desktopThreads, $email, $emailThreads, $firstName, $mentionKeys, $push, $pushStatus, $pushThreads, ";
  }

  @override
  List<Object?> get props => [
        channel,
        comments,
        desktop,
        desktopSound,
        desktopThreads,
        email,
        emailThreads,
        firstName,
        mentionKeys,
        push,
        pushStatus,
        pushThreads,
      ];
}
