class UserMeResponse {
  String? id;
  int? createAt;
  int? updateAt;
  int? deleteAt;
  String? username;
  String? authData;
  String? authService;
  String? email;
  String? nickname;
  String? firstName;
  String? lastName;
  String? position;
  String? roles;
  NotifyProps? notifyProps;
  int? lastPasswordUpdate;
  String? locale;
  Timezone? timezone;
  bool? disableWelcomeEmail;

  UserMeResponse(
      {this.id,
      this.createAt,
      this.updateAt,
      this.deleteAt,
      this.username,
      this.authData,
      this.authService,
      this.email,
      this.nickname,
      this.firstName,
      this.lastName,
      this.position,
      this.roles,
      this.notifyProps,
      this.lastPasswordUpdate,
      this.locale,
      this.timezone,
      this.disableWelcomeEmail});

  UserMeResponse.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    createAt = json['create_at'];
    updateAt = json['update_at'];
    deleteAt = json['delete_at'];
    username = json['username'];
    authData = json['auth_data'];
    authService = json['auth_service'];
    email = json['email'];
    nickname = json['nickname'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    position = json['position'];
    roles = json['roles'];
    notifyProps = json['notify_props'] != null
        ? new NotifyProps.fromJson(json['notify_props'])
        : null;
    lastPasswordUpdate = json['last_password_update'];
    locale = json['locale'];
    timezone = json['timezone'] != null
        ? new Timezone.fromJson(json['timezone'])
        : null;
    disableWelcomeEmail = json['disable_welcome_email'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['create_at'] = this.createAt;
    data['update_at'] = this.updateAt;
    data['delete_at'] = this.deleteAt;
    data['username'] = this.username;
    data['auth_data'] = this.authData;
    data['auth_service'] = this.authService;
    data['email'] = this.email;
    data['nickname'] = this.nickname;
    data['first_name'] = this.firstName;
    data['last_name'] = this.lastName;
    data['position'] = this.position;
    data['roles'] = this.roles;
    if (this.notifyProps != null) {
      data['notify_props'] = this.notifyProps!.toJson();
    }
    data['last_password_update'] = this.lastPasswordUpdate;
    data['locale'] = this.locale;
    if (this.timezone != null) {
      data['timezone'] = this.timezone!.toJson();
    }
    data['disable_welcome_email'] = this.disableWelcomeEmail;
    return data;
  }
}

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

  NotifyProps(
      {this.channel,
      this.comments,
      this.desktop,
      this.desktopSound,
      this.desktopThreads,
      this.email,
      this.emailThreads,
      this.firstName,
      this.mentionKeys,
      this.push,
      this.pushStatus,
      this.pushThreads});

  NotifyProps.fromJson(Map<String, dynamic> json) {
    channel = json['channel'];
    comments = json['comments'];
    desktop = json['desktop'];
    desktopSound = json['desktop_sound'];
    desktopThreads = json['desktop_threads'];
    email = json['email'];
    emailThreads = json['email_threads'];
    firstName = json['first_name'];
    mentionKeys = json['mention_keys'];
    push = json['push'];
    pushStatus = json['push_status'];
    pushThreads = json['push_threads'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['channel'] = this.channel;
    data['comments'] = this.comments;
    data['desktop'] = this.desktop;
    data['desktop_sound'] = this.desktopSound;
    data['desktop_threads'] = this.desktopThreads;
    data['email'] = this.email;
    data['email_threads'] = this.emailThreads;
    data['first_name'] = this.firstName;
    data['mention_keys'] = this.mentionKeys;
    data['push'] = this.push;
    data['push_status'] = this.pushStatus;
    data['push_threads'] = this.pushThreads;
    return data;
  }
}

class Timezone {
  String? automaticTimezone;
  String? manualTimezone;
  String? useAutomaticTimezone;

  Timezone(
      {this.automaticTimezone, this.manualTimezone, this.useAutomaticTimezone});

  Timezone.fromJson(Map<String, dynamic> json) {
    automaticTimezone = json['automaticTimezone'];
    manualTimezone = json['manualTimezone'];
    useAutomaticTimezone = json['useAutomaticTimezone'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['automaticTimezone'] = this.automaticTimezone;
    data['manualTimezone'] = this.manualTimezone;
    data['useAutomaticTimezone'] = this.useAutomaticTimezone;
    return data;
  }
}
