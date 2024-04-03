// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_access_token_sanitized.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserAccessTokenSanitized extends UserAccessTokenSanitized {
  @override
  final String? id;
  @override
  final String? userId;
  @override
  final String? description;
  @override
  final bool? isActive;

  factory _$UserAccessTokenSanitized(
          [void Function(UserAccessTokenSanitizedBuilder)? updates]) =>
      (new UserAccessTokenSanitizedBuilder()..update(updates))._build();

  _$UserAccessTokenSanitized._(
      {this.id, this.userId, this.description, this.isActive})
      : super._();

  @override
  UserAccessTokenSanitized rebuild(
          void Function(UserAccessTokenSanitizedBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserAccessTokenSanitizedBuilder toBuilder() =>
      new UserAccessTokenSanitizedBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserAccessTokenSanitized &&
        id == other.id &&
        userId == other.userId &&
        description == other.description &&
        isActive == other.isActive;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, isActive.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserAccessTokenSanitized')
          ..add('id', id)
          ..add('userId', userId)
          ..add('description', description)
          ..add('isActive', isActive))
        .toString();
  }
}

class UserAccessTokenSanitizedBuilder
    implements
        Builder<UserAccessTokenSanitized, UserAccessTokenSanitizedBuilder> {
  _$UserAccessTokenSanitized? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  bool? _isActive;
  bool? get isActive => _$this._isActive;
  set isActive(bool? isActive) => _$this._isActive = isActive;

  UserAccessTokenSanitizedBuilder() {
    UserAccessTokenSanitized._defaults(this);
  }

  UserAccessTokenSanitizedBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _userId = $v.userId;
      _description = $v.description;
      _isActive = $v.isActive;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserAccessTokenSanitized other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserAccessTokenSanitized;
  }

  @override
  void update(void Function(UserAccessTokenSanitizedBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserAccessTokenSanitized build() => _build();

  _$UserAccessTokenSanitized _build() {
    final _$result = _$v ??
        new _$UserAccessTokenSanitized._(
            id: id,
            userId: userId,
            description: description,
            isActive: isActive);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
