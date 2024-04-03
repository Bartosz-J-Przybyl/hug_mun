// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'disable_user_access_token_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DisableUserAccessTokenRequest extends DisableUserAccessTokenRequest {
  @override
  final String tokenId;

  factory _$DisableUserAccessTokenRequest(
          [void Function(DisableUserAccessTokenRequestBuilder)? updates]) =>
      (new DisableUserAccessTokenRequestBuilder()..update(updates))._build();

  _$DisableUserAccessTokenRequest._({required this.tokenId}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        tokenId, r'DisableUserAccessTokenRequest', 'tokenId');
  }

  @override
  DisableUserAccessTokenRequest rebuild(
          void Function(DisableUserAccessTokenRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DisableUserAccessTokenRequestBuilder toBuilder() =>
      new DisableUserAccessTokenRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DisableUserAccessTokenRequest && tokenId == other.tokenId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, tokenId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DisableUserAccessTokenRequest')
          ..add('tokenId', tokenId))
        .toString();
  }
}

class DisableUserAccessTokenRequestBuilder
    implements
        Builder<DisableUserAccessTokenRequest,
            DisableUserAccessTokenRequestBuilder> {
  _$DisableUserAccessTokenRequest? _$v;

  String? _tokenId;
  String? get tokenId => _$this._tokenId;
  set tokenId(String? tokenId) => _$this._tokenId = tokenId;

  DisableUserAccessTokenRequestBuilder() {
    DisableUserAccessTokenRequest._defaults(this);
  }

  DisableUserAccessTokenRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tokenId = $v.tokenId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DisableUserAccessTokenRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DisableUserAccessTokenRequest;
  }

  @override
  void update(void Function(DisableUserAccessTokenRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DisableUserAccessTokenRequest build() => _build();

  _$DisableUserAccessTokenRequest _build() {
    final _$result = _$v ??
        new _$DisableUserAccessTokenRequest._(
            tokenId: BuiltValueNullFieldError.checkNotNull(
                tokenId, r'DisableUserAccessTokenRequest', 'tokenId'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
