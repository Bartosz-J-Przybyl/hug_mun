// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'status_ok.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StatusOK extends StatusOK {
  @override
  final String? status;

  factory _$StatusOK([void Function(StatusOKBuilder)? updates]) =>
      (new StatusOKBuilder()..update(updates))._build();

  _$StatusOK._({this.status}) : super._();

  @override
  StatusOK rebuild(void Function(StatusOKBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StatusOKBuilder toBuilder() => new StatusOKBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StatusOK && status == other.status;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'StatusOK')..add('status', status))
        .toString();
  }
}

class StatusOKBuilder implements Builder<StatusOK, StatusOKBuilder> {
  _$StatusOK? _$v;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  StatusOKBuilder() {
    StatusOK._defaults(this);
  }

  StatusOKBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StatusOK other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StatusOK;
  }

  @override
  void update(void Function(StatusOKBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StatusOK build() => _build();

  _$StatusOK _build() {
    final _$result = _$v ?? new _$StatusOK._(status: status);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
