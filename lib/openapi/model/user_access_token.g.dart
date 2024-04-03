// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_access_token.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserAccessToken extends UserAccessToken {
  @override
  final String? id;
  @override
  final String? token;
  @override
  final String? userId;
  @override
  final String? description;

  factory _$UserAccessToken([void Function(UserAccessTokenBuilder)? updates]) =>
      (new UserAccessTokenBuilder()..update(updates))._build();

  _$UserAccessToken._({this.id, this.token, this.userId, this.description})
      : super._();

  @override
  UserAccessToken rebuild(void Function(UserAccessTokenBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserAccessTokenBuilder toBuilder() =>
      new UserAccessTokenBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserAccessToken &&
        id == other.id &&
        token == other.token &&
        userId == other.userId &&
        description == other.description;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, token.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserAccessToken')
          ..add('id', id)
          ..add('token', token)
          ..add('userId', userId)
          ..add('description', description))
        .toString();
  }
}

class UserAccessTokenBuilder
    implements Builder<UserAccessToken, UserAccessTokenBuilder> {
  _$UserAccessToken? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _token;
  String? get token => _$this._token;
  set token(String? token) => _$this._token = token;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  UserAccessTokenBuilder() {
    UserAccessToken._defaults(this);
  }

  UserAccessTokenBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _token = $v.token;
      _userId = $v.userId;
      _description = $v.description;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserAccessToken other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserAccessToken;
  }

  @override
  void update(void Function(UserAccessTokenBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserAccessToken build() => _build();

  _$UserAccessToken _build() {
    final _$result = _$v ??
        new _$UserAccessToken._(
            id: id, token: token, userId: userId, description: description);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
