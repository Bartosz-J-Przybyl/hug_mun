// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_limits.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserLimits extends UserLimits {
  @override
  final int? maxUsersLimit;
  @override
  final int? activeUserCount;

  factory _$UserLimits([void Function(UserLimitsBuilder)? updates]) =>
      (new UserLimitsBuilder()..update(updates))._build();

  _$UserLimits._({this.maxUsersLimit, this.activeUserCount}) : super._();

  @override
  UserLimits rebuild(void Function(UserLimitsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserLimitsBuilder toBuilder() => new UserLimitsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserLimits &&
        maxUsersLimit == other.maxUsersLimit &&
        activeUserCount == other.activeUserCount;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, maxUsersLimit.hashCode);
    _$hash = $jc(_$hash, activeUserCount.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserLimits')
          ..add('maxUsersLimit', maxUsersLimit)
          ..add('activeUserCount', activeUserCount))
        .toString();
  }
}

class UserLimitsBuilder implements Builder<UserLimits, UserLimitsBuilder> {
  _$UserLimits? _$v;

  int? _maxUsersLimit;
  int? get maxUsersLimit => _$this._maxUsersLimit;
  set maxUsersLimit(int? maxUsersLimit) =>
      _$this._maxUsersLimit = maxUsersLimit;

  int? _activeUserCount;
  int? get activeUserCount => _$this._activeUserCount;
  set activeUserCount(int? activeUserCount) =>
      _$this._activeUserCount = activeUserCount;

  UserLimitsBuilder() {
    UserLimits._defaults(this);
  }

  UserLimitsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _maxUsersLimit = $v.maxUsersLimit;
      _activeUserCount = $v.activeUserCount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserLimits other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserLimits;
  }

  @override
  void update(void Function(UserLimitsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserLimits build() => _build();

  _$UserLimits _build() {
    final _$result = _$v ??
        new _$UserLimits._(
            maxUsersLimit: maxUsersLimit, activeUserCount: activeUserCount);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
