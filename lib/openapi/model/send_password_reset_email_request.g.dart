// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_password_reset_email_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SendPasswordResetEmailRequest extends SendPasswordResetEmailRequest {
  @override
  final String email;

  factory _$SendPasswordResetEmailRequest(
          [void Function(SendPasswordResetEmailRequestBuilder)? updates]) =>
      (new SendPasswordResetEmailRequestBuilder()..update(updates))._build();

  _$SendPasswordResetEmailRequest._({required this.email}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        email, r'SendPasswordResetEmailRequest', 'email');
  }

  @override
  SendPasswordResetEmailRequest rebuild(
          void Function(SendPasswordResetEmailRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SendPasswordResetEmailRequestBuilder toBuilder() =>
      new SendPasswordResetEmailRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SendPasswordResetEmailRequest && email == other.email;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SendPasswordResetEmailRequest')
          ..add('email', email))
        .toString();
  }
}

class SendPasswordResetEmailRequestBuilder
    implements
        Builder<SendPasswordResetEmailRequest,
            SendPasswordResetEmailRequestBuilder> {
  _$SendPasswordResetEmailRequest? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  SendPasswordResetEmailRequestBuilder() {
    SendPasswordResetEmailRequest._defaults(this);
  }

  SendPasswordResetEmailRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SendPasswordResetEmailRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SendPasswordResetEmailRequest;
  }

  @override
  void update(void Function(SendPasswordResetEmailRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SendPasswordResetEmailRequest build() => _build();

  _$SendPasswordResetEmailRequest _build() {
    final _$result = _$v ??
        new _$SendPasswordResetEmailRequest._(
            email: BuiltValueNullFieldError.checkNotNull(
                email, r'SendPasswordResetEmailRequest', 'email'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
