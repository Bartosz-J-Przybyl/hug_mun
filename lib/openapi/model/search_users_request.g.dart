// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_users_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SearchUsersRequest extends SearchUsersRequest {
  @override
  final String term;
  @override
  final String? teamId;
  @override
  final String? notInTeamId;
  @override
  final String? inChannelId;
  @override
  final String? notInChannelId;
  @override
  final String? inGroupId;
  @override
  final bool? groupConstrained;
  @override
  final bool? allowInactive;
  @override
  final bool? withoutTeam;
  @override
  final int? limit;

  factory _$SearchUsersRequest(
          [void Function(SearchUsersRequestBuilder)? updates]) =>
      (new SearchUsersRequestBuilder()..update(updates))._build();

  _$SearchUsersRequest._(
      {required this.term,
      this.teamId,
      this.notInTeamId,
      this.inChannelId,
      this.notInChannelId,
      this.inGroupId,
      this.groupConstrained,
      this.allowInactive,
      this.withoutTeam,
      this.limit})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(term, r'SearchUsersRequest', 'term');
  }

  @override
  SearchUsersRequest rebuild(
          void Function(SearchUsersRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SearchUsersRequestBuilder toBuilder() =>
      new SearchUsersRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SearchUsersRequest &&
        term == other.term &&
        teamId == other.teamId &&
        notInTeamId == other.notInTeamId &&
        inChannelId == other.inChannelId &&
        notInChannelId == other.notInChannelId &&
        inGroupId == other.inGroupId &&
        groupConstrained == other.groupConstrained &&
        allowInactive == other.allowInactive &&
        withoutTeam == other.withoutTeam &&
        limit == other.limit;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, term.hashCode);
    _$hash = $jc(_$hash, teamId.hashCode);
    _$hash = $jc(_$hash, notInTeamId.hashCode);
    _$hash = $jc(_$hash, inChannelId.hashCode);
    _$hash = $jc(_$hash, notInChannelId.hashCode);
    _$hash = $jc(_$hash, inGroupId.hashCode);
    _$hash = $jc(_$hash, groupConstrained.hashCode);
    _$hash = $jc(_$hash, allowInactive.hashCode);
    _$hash = $jc(_$hash, withoutTeam.hashCode);
    _$hash = $jc(_$hash, limit.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SearchUsersRequest')
          ..add('term', term)
          ..add('teamId', teamId)
          ..add('notInTeamId', notInTeamId)
          ..add('inChannelId', inChannelId)
          ..add('notInChannelId', notInChannelId)
          ..add('inGroupId', inGroupId)
          ..add('groupConstrained', groupConstrained)
          ..add('allowInactive', allowInactive)
          ..add('withoutTeam', withoutTeam)
          ..add('limit', limit))
        .toString();
  }
}

class SearchUsersRequestBuilder
    implements Builder<SearchUsersRequest, SearchUsersRequestBuilder> {
  _$SearchUsersRequest? _$v;

  String? _term;
  String? get term => _$this._term;
  set term(String? term) => _$this._term = term;

  String? _teamId;
  String? get teamId => _$this._teamId;
  set teamId(String? teamId) => _$this._teamId = teamId;

  String? _notInTeamId;
  String? get notInTeamId => _$this._notInTeamId;
  set notInTeamId(String? notInTeamId) => _$this._notInTeamId = notInTeamId;

  String? _inChannelId;
  String? get inChannelId => _$this._inChannelId;
  set inChannelId(String? inChannelId) => _$this._inChannelId = inChannelId;

  String? _notInChannelId;
  String? get notInChannelId => _$this._notInChannelId;
  set notInChannelId(String? notInChannelId) =>
      _$this._notInChannelId = notInChannelId;

  String? _inGroupId;
  String? get inGroupId => _$this._inGroupId;
  set inGroupId(String? inGroupId) => _$this._inGroupId = inGroupId;

  bool? _groupConstrained;
  bool? get groupConstrained => _$this._groupConstrained;
  set groupConstrained(bool? groupConstrained) =>
      _$this._groupConstrained = groupConstrained;

  bool? _allowInactive;
  bool? get allowInactive => _$this._allowInactive;
  set allowInactive(bool? allowInactive) =>
      _$this._allowInactive = allowInactive;

  bool? _withoutTeam;
  bool? get withoutTeam => _$this._withoutTeam;
  set withoutTeam(bool? withoutTeam) => _$this._withoutTeam = withoutTeam;

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  SearchUsersRequestBuilder() {
    SearchUsersRequest._defaults(this);
  }

  SearchUsersRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _term = $v.term;
      _teamId = $v.teamId;
      _notInTeamId = $v.notInTeamId;
      _inChannelId = $v.inChannelId;
      _notInChannelId = $v.notInChannelId;
      _inGroupId = $v.inGroupId;
      _groupConstrained = $v.groupConstrained;
      _allowInactive = $v.allowInactive;
      _withoutTeam = $v.withoutTeam;
      _limit = $v.limit;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SearchUsersRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SearchUsersRequest;
  }

  @override
  void update(void Function(SearchUsersRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SearchUsersRequest build() => _build();

  _$SearchUsersRequest _build() {
    final _$result = _$v ??
        new _$SearchUsersRequest._(
            term: BuiltValueNullFieldError.checkNotNull(
                term, r'SearchUsersRequest', 'term'),
            teamId: teamId,
            notInTeamId: notInTeamId,
            inChannelId: inChannelId,
            notInChannelId: notInChannelId,
            inGroupId: inGroupId,
            groupConstrained: groupConstrained,
            allowInactive: allowInactive,
            withoutTeam: withoutTeam,
            limit: limit);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
