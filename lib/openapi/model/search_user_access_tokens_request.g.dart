// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_user_access_tokens_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SearchUserAccessTokensRequest extends SearchUserAccessTokensRequest {
  @override
  final String term;

  factory _$SearchUserAccessTokensRequest(
          [void Function(SearchUserAccessTokensRequestBuilder)? updates]) =>
      (new SearchUserAccessTokensRequestBuilder()..update(updates))._build();

  _$SearchUserAccessTokensRequest._({required this.term}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        term, r'SearchUserAccessTokensRequest', 'term');
  }

  @override
  SearchUserAccessTokensRequest rebuild(
          void Function(SearchUserAccessTokensRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SearchUserAccessTokensRequestBuilder toBuilder() =>
      new SearchUserAccessTokensRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SearchUserAccessTokensRequest && term == other.term;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, term.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SearchUserAccessTokensRequest')
          ..add('term', term))
        .toString();
  }
}

class SearchUserAccessTokensRequestBuilder
    implements
        Builder<SearchUserAccessTokensRequest,
            SearchUserAccessTokensRequestBuilder> {
  _$SearchUserAccessTokensRequest? _$v;

  String? _term;
  String? get term => _$this._term;
  set term(String? term) => _$this._term = term;

  SearchUserAccessTokensRequestBuilder() {
    SearchUserAccessTokensRequest._defaults(this);
  }

  SearchUserAccessTokensRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _term = $v.term;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SearchUserAccessTokensRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SearchUserAccessTokensRequest;
  }

  @override
  void update(void Function(SearchUserAccessTokensRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SearchUserAccessTokensRequest build() => _build();

  _$SearchUserAccessTokensRequest _build() {
    final _$result = _$v ??
        new _$SearchUserAccessTokensRequest._(
            term: BuiltValueNullFieldError.checkNotNull(
                term, r'SearchUserAccessTokensRequest', 'term'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
