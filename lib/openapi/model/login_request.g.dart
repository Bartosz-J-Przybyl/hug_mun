// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LoginRequest extends LoginRequest {
  @override
  final String? id;
  @override
  final String? loginId;
  @override
  final String? token;
  @override
  final String? deviceId;
  @override
  final bool? ldapOnly;
  @override
  final String? password;

  factory _$LoginRequest([void Function(LoginRequestBuilder)? updates]) =>
      (new LoginRequestBuilder()..update(updates))._build();

  _$LoginRequest._(
      {this.id,
      this.loginId,
      this.token,
      this.deviceId,
      this.ldapOnly,
      this.password})
      : super._();

  @override
  LoginRequest rebuild(void Function(LoginRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LoginRequestBuilder toBuilder() => new LoginRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LoginRequest &&
        id == other.id &&
        loginId == other.loginId &&
        token == other.token &&
        deviceId == other.deviceId &&
        ldapOnly == other.ldapOnly &&
        password == other.password;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, loginId.hashCode);
    _$hash = $jc(_$hash, token.hashCode);
    _$hash = $jc(_$hash, deviceId.hashCode);
    _$hash = $jc(_$hash, ldapOnly.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LoginRequest')
          ..add('id', id)
          ..add('loginId', loginId)
          ..add('token', token)
          ..add('deviceId', deviceId)
          ..add('ldapOnly', ldapOnly)
          ..add('password', password))
        .toString();
  }
}

class LoginRequestBuilder
    implements Builder<LoginRequest, LoginRequestBuilder> {
  _$LoginRequest? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _loginId;
  String? get loginId => _$this._loginId;
  set loginId(String? loginId) => _$this._loginId = loginId;

  String? _token;
  String? get token => _$this._token;
  set token(String? token) => _$this._token = token;

  String? _deviceId;
  String? get deviceId => _$this._deviceId;
  set deviceId(String? deviceId) => _$this._deviceId = deviceId;

  bool? _ldapOnly;
  bool? get ldapOnly => _$this._ldapOnly;
  set ldapOnly(bool? ldapOnly) => _$this._ldapOnly = ldapOnly;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  LoginRequestBuilder() {
    LoginRequest._defaults(this);
  }

  LoginRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _loginId = $v.loginId;
      _token = $v.token;
      _deviceId = $v.deviceId;
      _ldapOnly = $v.ldapOnly;
      _password = $v.password;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LoginRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LoginRequest;
  }

  @override
  void update(void Function(LoginRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LoginRequest build() => _build();

  _$LoginRequest _build() {
    final _$result = _$v ??
        new _$LoginRequest._(
            id: id,
            loginId: loginId,
            token: token,
            deviceId: deviceId,
            ldapOnly: ldapOnly,
            password: password);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
