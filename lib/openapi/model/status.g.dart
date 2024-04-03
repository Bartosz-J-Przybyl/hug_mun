// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Status extends Status {
  @override
  final String? userId;
  @override
  final String? status;
  @override
  final bool? manual;
  @override
  final int? lastActivityAt;

  factory _$Status([void Function(StatusBuilder)? updates]) =>
      (new StatusBuilder()..update(updates))._build();

  _$Status._({this.userId, this.status, this.manual, this.lastActivityAt})
      : super._();

  @override
  Status rebuild(void Function(StatusBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StatusBuilder toBuilder() => new StatusBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Status &&
        userId == other.userId &&
        status == other.status &&
        manual == other.manual &&
        lastActivityAt == other.lastActivityAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, manual.hashCode);
    _$hash = $jc(_$hash, lastActivityAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Status')
          ..add('userId', userId)
          ..add('status', status)
          ..add('manual', manual)
          ..add('lastActivityAt', lastActivityAt))
        .toString();
  }
}

class StatusBuilder implements Builder<Status, StatusBuilder> {
  _$Status? _$v;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  bool? _manual;
  bool? get manual => _$this._manual;
  set manual(bool? manual) => _$this._manual = manual;

  int? _lastActivityAt;
  int? get lastActivityAt => _$this._lastActivityAt;
  set lastActivityAt(int? lastActivityAt) =>
      _$this._lastActivityAt = lastActivityAt;

  StatusBuilder() {
    Status._defaults(this);
  }

  StatusBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userId = $v.userId;
      _status = $v.status;
      _manual = $v.manual;
      _lastActivityAt = $v.lastActivityAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Status other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Status;
  }

  @override
  void update(void Function(StatusBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Status build() => _build();

  _$Status _build() {
    final _$result = _$v ??
        new _$Status._(
            userId: userId,
            status: status,
            manual: manual,
            lastActivityAt: lastActivityAt);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
