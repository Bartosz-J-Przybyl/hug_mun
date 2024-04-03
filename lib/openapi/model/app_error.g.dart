// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_error.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AppError extends AppError {
  @override
  final int? statusCode;
  @override
  final String? id;
  @override
  final String? message;
  @override
  final String? requestId;

  factory _$AppError([void Function(AppErrorBuilder)? updates]) =>
      (new AppErrorBuilder()..update(updates))._build();

  _$AppError._({this.statusCode, this.id, this.message, this.requestId})
      : super._();

  @override
  AppError rebuild(void Function(AppErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AppErrorBuilder toBuilder() => new AppErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AppError &&
        statusCode == other.statusCode &&
        id == other.id &&
        message == other.message &&
        requestId == other.requestId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, statusCode.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, requestId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AppError')
          ..add('statusCode', statusCode)
          ..add('id', id)
          ..add('message', message)
          ..add('requestId', requestId))
        .toString();
  }
}

class AppErrorBuilder implements Builder<AppError, AppErrorBuilder> {
  _$AppError? _$v;

  int? _statusCode;
  int? get statusCode => _$this._statusCode;
  set statusCode(int? statusCode) => _$this._statusCode = statusCode;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  String? _requestId;
  String? get requestId => _$this._requestId;
  set requestId(String? requestId) => _$this._requestId = requestId;

  AppErrorBuilder() {
    AppError._defaults(this);
  }

  AppErrorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _statusCode = $v.statusCode;
      _id = $v.id;
      _message = $v.message;
      _requestId = $v.requestId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AppError other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AppError;
  }

  @override
  void update(void Function(AppErrorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AppError build() => _build();

  _$AppError _build() {
    final _$result = _$v ??
        new _$AppError._(
            statusCode: statusCode,
            id: id,
            message: message,
            requestId: requestId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
