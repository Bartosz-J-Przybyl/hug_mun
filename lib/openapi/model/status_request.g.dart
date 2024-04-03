// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'status_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StatusRequest extends StatusRequest {
  @override
  final String message;
  @override
  final num? reminder;

  factory _$StatusRequest([void Function(StatusRequestBuilder)? updates]) =>
      (new StatusRequestBuilder()..update(updates))._build();

  _$StatusRequest._({required this.message, this.reminder}) : super._() {
    BuiltValueNullFieldError.checkNotNull(message, r'StatusRequest', 'message');
  }

  @override
  StatusRequest rebuild(void Function(StatusRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StatusRequestBuilder toBuilder() => new StatusRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StatusRequest &&
        message == other.message &&
        reminder == other.reminder;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, reminder.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'StatusRequest')
          ..add('message', message)
          ..add('reminder', reminder))
        .toString();
  }
}

class StatusRequestBuilder
    implements Builder<StatusRequest, StatusRequestBuilder> {
  _$StatusRequest? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  num? _reminder;
  num? get reminder => _$this._reminder;
  set reminder(num? reminder) => _$this._reminder = reminder;

  StatusRequestBuilder() {
    StatusRequest._defaults(this);
  }

  StatusRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _reminder = $v.reminder;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StatusRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StatusRequest;
  }

  @override
  void update(void Function(StatusRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StatusRequest build() => _build();

  _$StatusRequest _build() {
    final _$result = _$v ??
        new _$StatusRequest._(
            message: BuiltValueNullFieldError.checkNotNull(
                message, r'StatusRequest', 'message'),
            reminder: reminder);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
