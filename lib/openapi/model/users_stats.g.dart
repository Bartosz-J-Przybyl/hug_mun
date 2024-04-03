// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_stats.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UsersStats extends UsersStats {
  @override
  final int? totalUsersCount;

  factory _$UsersStats([void Function(UsersStatsBuilder)? updates]) =>
      (new UsersStatsBuilder()..update(updates))._build();

  _$UsersStats._({this.totalUsersCount}) : super._();

  @override
  UsersStats rebuild(void Function(UsersStatsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UsersStatsBuilder toBuilder() => new UsersStatsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UsersStats && totalUsersCount == other.totalUsersCount;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, totalUsersCount.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UsersStats')
          ..add('totalUsersCount', totalUsersCount))
        .toString();
  }
}

class UsersStatsBuilder implements Builder<UsersStats, UsersStatsBuilder> {
  _$UsersStats? _$v;

  int? _totalUsersCount;
  int? get totalUsersCount => _$this._totalUsersCount;
  set totalUsersCount(int? totalUsersCount) =>
      _$this._totalUsersCount = totalUsersCount;

  UsersStatsBuilder() {
    UsersStats._defaults(this);
  }

  UsersStatsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _totalUsersCount = $v.totalUsersCount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UsersStats other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UsersStats;
  }

  @override
  void update(void Function(UsersStatsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UsersStats build() => _build();

  _$UsersStats _build() {
    final _$result =
        _$v ?? new _$UsersStats._(totalUsersCount: totalUsersCount);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
