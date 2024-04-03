// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_user_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateUserRequest extends CreateUserRequest {
  @override
  final String email;
  @override
  final String username;
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String? nickname;
  @override
  final String? authData;
  @override
  final String? authService;
  @override
  final String? password;
  @override
  final String? locale;
  @override
  final JsonObject? props;
  @override
  final UserNotifyProps? notifyProps;

  factory _$CreateUserRequest(
          [void Function(CreateUserRequestBuilder)? updates]) =>
      (new CreateUserRequestBuilder()..update(updates))._build();

  _$CreateUserRequest._(
      {required this.email,
      required this.username,
      this.firstName,
      this.lastName,
      this.nickname,
      this.authData,
      this.authService,
      this.password,
      this.locale,
      this.props,
      this.notifyProps})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(email, r'CreateUserRequest', 'email');
    BuiltValueNullFieldError.checkNotNull(
        username, r'CreateUserRequest', 'username');
  }

  @override
  CreateUserRequest rebuild(void Function(CreateUserRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateUserRequestBuilder toBuilder() =>
      new CreateUserRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateUserRequest &&
        email == other.email &&
        username == other.username &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        nickname == other.nickname &&
        authData == other.authData &&
        authService == other.authService &&
        password == other.password &&
        locale == other.locale &&
        props == other.props &&
        notifyProps == other.notifyProps;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, username.hashCode);
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, lastName.hashCode);
    _$hash = $jc(_$hash, nickname.hashCode);
    _$hash = $jc(_$hash, authData.hashCode);
    _$hash = $jc(_$hash, authService.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jc(_$hash, locale.hashCode);
    _$hash = $jc(_$hash, props.hashCode);
    _$hash = $jc(_$hash, notifyProps.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreateUserRequest')
          ..add('email', email)
          ..add('username', username)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('nickname', nickname)
          ..add('authData', authData)
          ..add('authService', authService)
          ..add('password', password)
          ..add('locale', locale)
          ..add('props', props)
          ..add('notifyProps', notifyProps))
        .toString();
  }
}

class CreateUserRequestBuilder
    implements Builder<CreateUserRequest, CreateUserRequestBuilder> {
  _$CreateUserRequest? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  String? _nickname;
  String? get nickname => _$this._nickname;
  set nickname(String? nickname) => _$this._nickname = nickname;

  String? _authData;
  String? get authData => _$this._authData;
  set authData(String? authData) => _$this._authData = authData;

  String? _authService;
  String? get authService => _$this._authService;
  set authService(String? authService) => _$this._authService = authService;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  String? _locale;
  String? get locale => _$this._locale;
  set locale(String? locale) => _$this._locale = locale;

  JsonObject? _props;
  JsonObject? get props => _$this._props;
  set props(JsonObject? props) => _$this._props = props;

  UserNotifyPropsBuilder? _notifyProps;
  UserNotifyPropsBuilder get notifyProps =>
      _$this._notifyProps ??= new UserNotifyPropsBuilder();
  set notifyProps(UserNotifyPropsBuilder? notifyProps) =>
      _$this._notifyProps = notifyProps;

  CreateUserRequestBuilder() {
    CreateUserRequest._defaults(this);
  }

  CreateUserRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _username = $v.username;
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _nickname = $v.nickname;
      _authData = $v.authData;
      _authService = $v.authService;
      _password = $v.password;
      _locale = $v.locale;
      _props = $v.props;
      _notifyProps = $v.notifyProps?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateUserRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateUserRequest;
  }

  @override
  void update(void Function(CreateUserRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateUserRequest build() => _build();

  _$CreateUserRequest _build() {
    _$CreateUserRequest _$result;
    try {
      _$result = _$v ??
          new _$CreateUserRequest._(
              email: BuiltValueNullFieldError.checkNotNull(
                  email, r'CreateUserRequest', 'email'),
              username: BuiltValueNullFieldError.checkNotNull(
                  username, r'CreateUserRequest', 'username'),
              firstName: firstName,
              lastName: lastName,
              nickname: nickname,
              authData: authData,
              authService: authService,
              password: password,
              locale: locale,
              props: props,
              notifyProps: _notifyProps?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'notifyProps';
        _notifyProps?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateUserRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
