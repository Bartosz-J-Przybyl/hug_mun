// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_notify_props.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserNotifyProps extends UserNotifyProps {
  @override
  final String? email;
  @override
  final String? push;
  @override
  final String? desktop;
  @override
  final String? desktopSound;
  @override
  final String? mentionKeys;
  @override
  final String? channel;
  @override
  final String? firstName;

  factory _$UserNotifyProps([void Function(UserNotifyPropsBuilder)? updates]) =>
      (new UserNotifyPropsBuilder()..update(updates))._build();

  _$UserNotifyProps._(
      {this.email,
      this.push,
      this.desktop,
      this.desktopSound,
      this.mentionKeys,
      this.channel,
      this.firstName})
      : super._();

  @override
  UserNotifyProps rebuild(void Function(UserNotifyPropsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserNotifyPropsBuilder toBuilder() =>
      new UserNotifyPropsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserNotifyProps &&
        email == other.email &&
        push == other.push &&
        desktop == other.desktop &&
        desktopSound == other.desktopSound &&
        mentionKeys == other.mentionKeys &&
        channel == other.channel &&
        firstName == other.firstName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, push.hashCode);
    _$hash = $jc(_$hash, desktop.hashCode);
    _$hash = $jc(_$hash, desktopSound.hashCode);
    _$hash = $jc(_$hash, mentionKeys.hashCode);
    _$hash = $jc(_$hash, channel.hashCode);
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserNotifyProps')
          ..add('email', email)
          ..add('push', push)
          ..add('desktop', desktop)
          ..add('desktopSound', desktopSound)
          ..add('mentionKeys', mentionKeys)
          ..add('channel', channel)
          ..add('firstName', firstName))
        .toString();
  }
}

class UserNotifyPropsBuilder
    implements Builder<UserNotifyProps, UserNotifyPropsBuilder> {
  _$UserNotifyProps? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _push;
  String? get push => _$this._push;
  set push(String? push) => _$this._push = push;

  String? _desktop;
  String? get desktop => _$this._desktop;
  set desktop(String? desktop) => _$this._desktop = desktop;

  String? _desktopSound;
  String? get desktopSound => _$this._desktopSound;
  set desktopSound(String? desktopSound) => _$this._desktopSound = desktopSound;

  String? _mentionKeys;
  String? get mentionKeys => _$this._mentionKeys;
  set mentionKeys(String? mentionKeys) => _$this._mentionKeys = mentionKeys;

  String? _channel;
  String? get channel => _$this._channel;
  set channel(String? channel) => _$this._channel = channel;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  UserNotifyPropsBuilder() {
    UserNotifyProps._defaults(this);
  }

  UserNotifyPropsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _push = $v.push;
      _desktop = $v.desktop;
      _desktopSound = $v.desktopSound;
      _mentionKeys = $v.mentionKeys;
      _channel = $v.channel;
      _firstName = $v.firstName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserNotifyProps other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserNotifyProps;
  }

  @override
  void update(void Function(UserNotifyPropsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserNotifyProps build() => _build();

  _$UserNotifyProps _build() {
    final _$result = _$v ??
        new _$UserNotifyProps._(
            email: email,
            push: push,
            desktop: desktop,
            desktopSound: desktopSound,
            mentionKeys: mentionKeys,
            channel: channel,
            firstName: firstName);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
