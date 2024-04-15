
class NotifyProps {
  String? channel;
  String? comments;
  String? desktop;
  String? desktopSound;
  String? desktopThreads;
  String? email;
  String? emailThreads;
  String? firstName;
  String? mentionKeys;
  String? push;
  String? pushStatus;
  String? pushThreads;

  NotifyProps.fromJson(Map<String, dynamic> json) {
    channel = json['channel'] as String?;
    comments = json['comments'] as String?;
    desktop = json['desktop'] as String?;
    desktopSound = json['desktop_sound'] as String?;
    desktopThreads = json['desktop_threads'] as String?;
    email = json['email'] as String?;
    emailThreads = json['email_threads'] as String?;
    firstName = json['first_name'] as String?;
    mentionKeys = json['mention_keys'] as String?;
    push = json['push'] as String?;
    pushStatus = json['push_status'] as String?;
    pushThreads = json['push_threads'] as String?;
  }

  Map<String, dynamic> toJson() {
    return {
      'channel': channel,
      'comments': comments,
      'desktop': desktop,
      'desktop_sound': desktopSound,
      'desktop_threads': desktopThreads,
      'email': email,
      'email_threads': emailThreads,
      'first_name': firstName,
      'mention_keys': mentionKeys,
      'push': push,
      'push_status': pushStatus,
      'push_threads': pushThreads,
    };
  }
}