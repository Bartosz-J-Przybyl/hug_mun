// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'revoke_session_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RevokeSessionRequest extends RevokeSessionRequest {
  @override
  final String sessionId;

  factory _$RevokeSessionRequest(
          [void Function(RevokeSessionRequestBuilder)? updates]) =>
      (new RevokeSessionRequestBuilder()..update(updates))._build();

  _$RevokeSessionRequest._({required this.sessionId}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        sessionId, r'RevokeSessionRequest', 'sessionId');
  }

  @override
  RevokeSessionRequest rebuild(
          void Function(RevokeSessionRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RevokeSessionRequestBuilder toBuilder() =>
      new RevokeSessionRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RevokeSessionRequest && sessionId == other.sessionId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, sessionId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RevokeSessionRequest')
          ..add('sessionId', sessionId))
        .toString();
  }
}

class RevokeSessionRequestBuilder
    implements Builder<RevokeSessionRequest, RevokeSessionRequestBuilder> {
  _$RevokeSessionRequest? _$v;

  String? _sessionId;
  String? get sessionId => _$this._sessionId;
  set sessionId(String? sessionId) => _$this._sessionId = sessionId;

  RevokeSessionRequestBuilder() {
    RevokeSessionRequest._defaults(this);
  }

  RevokeSessionRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sessionId = $v.sessionId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RevokeSessionRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RevokeSessionRequest;
  }

  @override
  void update(void Function(RevokeSessionRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RevokeSessionRequest build() => _build();

  _$RevokeSessionRequest _build() {
    final _$result = _$v ??
        new _$RevokeSessionRequest._(
            sessionId: BuiltValueNullFieldError.checkNotNull(
                sessionId, r'RevokeSessionRequest', 'sessionId'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
