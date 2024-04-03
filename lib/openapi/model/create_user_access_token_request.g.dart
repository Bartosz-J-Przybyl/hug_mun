// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_user_access_token_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateUserAccessTokenRequest extends CreateUserAccessTokenRequest {
  @override
  final String description;

  factory _$CreateUserAccessTokenRequest(
          [void Function(CreateUserAccessTokenRequestBuilder)? updates]) =>
      (new CreateUserAccessTokenRequestBuilder()..update(updates))._build();

  _$CreateUserAccessTokenRequest._({required this.description}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        description, r'CreateUserAccessTokenRequest', 'description');
  }

  @override
  CreateUserAccessTokenRequest rebuild(
          void Function(CreateUserAccessTokenRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateUserAccessTokenRequestBuilder toBuilder() =>
      new CreateUserAccessTokenRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateUserAccessTokenRequest &&
        description == other.description;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreateUserAccessTokenRequest')
          ..add('description', description))
        .toString();
  }
}

class CreateUserAccessTokenRequestBuilder
    implements
        Builder<CreateUserAccessTokenRequest,
            CreateUserAccessTokenRequestBuilder> {
  _$CreateUserAccessTokenRequest? _$v;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  CreateUserAccessTokenRequestBuilder() {
    CreateUserAccessTokenRequest._defaults(this);
  }

  CreateUserAccessTokenRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _description = $v.description;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateUserAccessTokenRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateUserAccessTokenRequest;
  }

  @override
  void update(void Function(CreateUserAccessTokenRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateUserAccessTokenRequest build() => _build();

  _$CreateUserAccessTokenRequest _build() {
    final _$result = _$v ??
        new _$CreateUserAccessTokenRequest._(
            description: BuiltValueNullFieldError.checkNotNull(
                description, r'CreateUserAccessTokenRequest', 'description'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateUserAccessTokenRequest _$CreateUserAccessTokenRequestFromJson(
        Map<String, dynamic> json) =>
    CreateUserAccessTokenRequest();

Map<String, dynamic> _$CreateUserAccessTokenRequestToJson(
        CreateUserAccessTokenRequest instance) =>
    <String, dynamic>{};
