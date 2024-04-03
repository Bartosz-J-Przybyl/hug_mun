// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_verification_email_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SendVerificationEmailRequest extends SendVerificationEmailRequest {
  @override
  final String email;

  factory _$SendVerificationEmailRequest(
          [void Function(SendVerificationEmailRequestBuilder)? updates]) =>
      (new SendVerificationEmailRequestBuilder()..update(updates))._build();

  _$SendVerificationEmailRequest._({required this.email}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        email, r'SendVerificationEmailRequest', 'email');
  }

  @override
  SendVerificationEmailRequest rebuild(
          void Function(SendVerificationEmailRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SendVerificationEmailRequestBuilder toBuilder() =>
      new SendVerificationEmailRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SendVerificationEmailRequest && email == other.email;
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
    return (newBuiltValueToStringHelper(r'SendVerificationEmailRequest')
          ..add('email', email))
        .toString();
  }
}

class SendVerificationEmailRequestBuilder
    implements
        Builder<SendVerificationEmailRequest,
            SendVerificationEmailRequestBuilder> {
  _$SendVerificationEmailRequest? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  SendVerificationEmailRequestBuilder() {
    SendVerificationEmailRequest._defaults(this);
  }

  SendVerificationEmailRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SendVerificationEmailRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SendVerificationEmailRequest;
  }

  @override
  void update(void Function(SendVerificationEmailRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SendVerificationEmailRequest build() => _build();

  _$SendVerificationEmailRequest _build() {
    final _$result = _$v ??
        new _$SendVerificationEmailRequest._(
            email: BuiltValueNullFieldError.checkNotNull(
                email, r'SendVerificationEmailRequest', 'email'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
