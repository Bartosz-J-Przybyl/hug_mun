// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'revoke_user_access_token_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RevokeUserAccessTokenRequest extends RevokeUserAccessTokenRequest {
  @override
  final String tokenId;

  factory _$RevokeUserAccessTokenRequest(
          [void Function(RevokeUserAccessTokenRequestBuilder)? updates]) =>
      (new RevokeUserAccessTokenRequestBuilder()..update(updates))._build();

  _$RevokeUserAccessTokenRequest._({required this.tokenId}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        tokenId, r'RevokeUserAccessTokenRequest', 'tokenId');
  }

  @override
  RevokeUserAccessTokenRequest rebuild(
          void Function(RevokeUserAccessTokenRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RevokeUserAccessTokenRequestBuilder toBuilder() =>
      new RevokeUserAccessTokenRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RevokeUserAccessTokenRequest && tokenId == other.tokenId;
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
    return (newBuiltValueToStringHelper(r'RevokeUserAccessTokenRequest')
          ..add('tokenId', tokenId))
        .toString();
  }
}

class RevokeUserAccessTokenRequestBuilder
    implements
        Builder<RevokeUserAccessTokenRequest,
            RevokeUserAccessTokenRequestBuilder> {
  _$RevokeUserAccessTokenRequest? _$v;

  String? _tokenId;
  String? get tokenId => _$this._tokenId;
  set tokenId(String? tokenId) => _$this._tokenId = tokenId;

  RevokeUserAccessTokenRequestBuilder() {
    RevokeUserAccessTokenRequest._defaults(this);
  }

  RevokeUserAccessTokenRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tokenId = $v.tokenId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RevokeUserAccessTokenRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RevokeUserAccessTokenRequest;
  }

  @override
  void update(void Function(RevokeUserAccessTokenRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RevokeUserAccessTokenRequest build() => _build();

  _$RevokeUserAccessTokenRequest _build() {
    final _$result = _$v ??
        new _$RevokeUserAccessTokenRequest._(
            tokenId: BuiltValueNullFieldError.checkNotNull(
                tokenId, r'RevokeUserAccessTokenRequest', 'tokenId'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
