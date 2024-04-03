// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'enable_user_access_token_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EnableUserAccessTokenRequest extends EnableUserAccessTokenRequest {
  @override
  final String tokenId;

  factory _$EnableUserAccessTokenRequest(
          [void Function(EnableUserAccessTokenRequestBuilder)? updates]) =>
      (new EnableUserAccessTokenRequestBuilder()..update(updates))._build();

  _$EnableUserAccessTokenRequest._({required this.tokenId}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        tokenId, r'EnableUserAccessTokenRequest', 'tokenId');
  }

  @override
  EnableUserAccessTokenRequest rebuild(
          void Function(EnableUserAccessTokenRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EnableUserAccessTokenRequestBuilder toBuilder() =>
      new EnableUserAccessTokenRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EnableUserAccessTokenRequest && tokenId == other.tokenId;
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
    return (newBuiltValueToStringHelper(r'EnableUserAccessTokenRequest')
          ..add('tokenId', tokenId))
        .toString();
  }
}

class EnableUserAccessTokenRequestBuilder
    implements
        Builder<EnableUserAccessTokenRequest,
            EnableUserAccessTokenRequestBuilder> {
  _$EnableUserAccessTokenRequest? _$v;

  String? _tokenId;
  String? get tokenId => _$this._tokenId;
  set tokenId(String? tokenId) => _$this._tokenId = tokenId;

  EnableUserAccessTokenRequestBuilder() {
    EnableUserAccessTokenRequest._defaults(this);
  }

  EnableUserAccessTokenRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tokenId = $v.tokenId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EnableUserAccessTokenRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EnableUserAccessTokenRequest;
  }

  @override
  void update(void Function(EnableUserAccessTokenRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EnableUserAccessTokenRequest build() => _build();

  _$EnableUserAccessTokenRequest _build() {
    final _$result = _$v ??
        new _$EnableUserAccessTokenRequest._(
            tokenId: BuiltValueNullFieldError.checkNotNull(
                tokenId, r'EnableUserAccessTokenRequest', 'tokenId'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
