
class NotifyProps {
  String? channel;
  String? comments;
  String? desktop;
  String? desktop_sound;
  String? desktop_threads;
  String? email;
  String? email_threads;
  String? first_name;
  String? mention_keys;
  String? push;
  String? push_status;
  String? push_threads;

  NotifyProps.fromJson(Map<String, dynamic> json) {
    channel = json['channel'] as String;
    comments = json['comments'] as String;
    desktop = json['desktop'] as String;
    desktop_sound = json['desktop_sound'] as String;
    desktop_threads = json['desktop_threads'] as String;
    email = json['email'] as String;
    email_threads = json['email_threads'] as String;
    first_name = json['first_name'] as String;
    mention_keys = json['mention_keys'] as String;
    push = json['push'] as String;
    push_status = json['push_status'] as String;
    push_threads = json['push_threads'] as String;
  }

  Map<String, dynamic> toJson() {
    return {
      'channel': channel,
      'comments': comments,
      'desktop': desktop,
      'desktop_sound': desktop_sound,
      'desktop_threads': desktop_threads,
      'email': email,
      'email_threads': email_threads,
      'first_name': first_name,
      'mention_keys': mention_keys,
      'push': push,
      'push_status': push_status,
      'push_threads': push_threads,
    };
  }
}