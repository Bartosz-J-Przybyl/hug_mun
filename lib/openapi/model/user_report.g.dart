// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_report.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserReport extends UserReport {
  @override
  final String? id;
  @override
  final int? createAt;
  @override
  final String? username;
  @override
  final String? email;
  @override
  final String? displayName;
  @override
  final int? lastLoginAt;
  @override
  final int? lastStatusAt;
  @override
  final int? lastPostDate;
  @override
  final int? daysActive;
  @override
  final int? totalPosts;

  factory _$UserReport([void Function(UserReportBuilder)? updates]) =>
      (new UserReportBuilder()..update(updates))._build();

  _$UserReport._(
      {this.id,
      this.createAt,
      this.username,
      this.email,
      this.displayName,
      this.lastLoginAt,
      this.lastStatusAt,
      this.lastPostDate,
      this.daysActive,
      this.totalPosts})
      : super._();

  @override
  UserReport rebuild(void Function(UserReportBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserReportBuilder toBuilder() => new UserReportBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserReport &&
        id == other.id &&
        createAt == other.createAt &&
        username == other.username &&
        email == other.email &&
        displayName == other.displayName &&
        lastLoginAt == other.lastLoginAt &&
        lastStatusAt == other.lastStatusAt &&
        lastPostDate == other.lastPostDate &&
        daysActive == other.daysActive &&
        totalPosts == other.totalPosts;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, createAt.hashCode);
    _$hash = $jc(_$hash, username.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, displayName.hashCode);
    _$hash = $jc(_$hash, lastLoginAt.hashCode);
    _$hash = $jc(_$hash, lastStatusAt.hashCode);
    _$hash = $jc(_$hash, lastPostDate.hashCode);
    _$hash = $jc(_$hash, daysActive.hashCode);
    _$hash = $jc(_$hash, totalPosts.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserReport')
          ..add('id', id)
          ..add('createAt', createAt)
          ..add('username', username)
          ..add('email', email)
          ..add('displayName', displayName)
          ..add('lastLoginAt', lastLoginAt)
          ..add('lastStatusAt', lastStatusAt)
          ..add('lastPostDate', lastPostDate)
          ..add('daysActive', daysActive)
          ..add('totalPosts', totalPosts))
        .toString();
  }
}

class UserReportBuilder implements Builder<UserReport, UserReportBuilder> {
  _$UserReport? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  int? _createAt;
  int? get createAt => _$this._createAt;
  set createAt(int? createAt) => _$this._createAt = createAt;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _displayName;
  String? get displayName => _$this._displayName;
  set displayName(String? displayName) => _$this._displayName = displayName;

  int? _lastLoginAt;
  int? get lastLoginAt => _$this._lastLoginAt;
  set lastLoginAt(int? lastLoginAt) => _$this._lastLoginAt = lastLoginAt;

  int? _lastStatusAt;
  int? get lastStatusAt => _$this._lastStatusAt;
  set lastStatusAt(int? lastStatusAt) => _$this._lastStatusAt = lastStatusAt;

  int? _lastPostDate;
  int? get lastPostDate => _$this._lastPostDate;
  set lastPostDate(int? lastPostDate) => _$this._lastPostDate = lastPostDate;

  int? _daysActive;
  int? get daysActive => _$this._daysActive;
  set daysActive(int? daysActive) => _$this._daysActive = daysActive;

  int? _totalPosts;
  int? get totalPosts => _$this._totalPosts;
  set totalPosts(int? totalPosts) => _$this._totalPosts = totalPosts;

  UserReportBuilder() {
    UserReport._defaults(this);
  }

  UserReportBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _createAt = $v.createAt;
      _username = $v.username;
      _email = $v.email;
      _displayName = $v.displayName;
      _lastLoginAt = $v.lastLoginAt;
      _lastStatusAt = $v.lastStatusAt;
      _lastPostDate = $v.lastPostDate;
      _daysActive = $v.daysActive;
      _totalPosts = $v.totalPosts;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserReport other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserReport;
  }

  @override
  void update(void Function(UserReportBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserReport build() => _build();

  _$UserReport _build() {
    final _$result = _$v ??
        new _$UserReport._(
            id: id,
            createAt: createAt,
            username: username,
            email: email,
            displayName: displayName,
            lastLoginAt: lastLoginAt,
            lastStatusAt: lastStatusAt,
            lastPostDate: lastPostDate,
            daysActive: daysActive,
            totalPosts: totalPosts);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
