// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'permission_partial_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PermissionPartialInfo extends PermissionPartialInfo {
  @override
  final String userId;
  @override
  final Date created;
  @override
  final bool permission;
  @override
  final String reportId;

  factory _$PermissionPartialInfo(
          [void Function(PermissionPartialInfoBuilder)? updates]) =>
      (new PermissionPartialInfoBuilder()..update(updates))._build();

  _$PermissionPartialInfo._(
      {required this.userId,
      required this.created,
      required this.permission,
      required this.reportId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        userId, r'PermissionPartialInfo', 'userId');
    BuiltValueNullFieldError.checkNotNull(
        created, r'PermissionPartialInfo', 'created');
    BuiltValueNullFieldError.checkNotNull(
        permission, r'PermissionPartialInfo', 'permission');
    BuiltValueNullFieldError.checkNotNull(
        reportId, r'PermissionPartialInfo', 'reportId');
  }

  @override
  PermissionPartialInfo rebuild(
          void Function(PermissionPartialInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PermissionPartialInfoBuilder toBuilder() =>
      new PermissionPartialInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PermissionPartialInfo &&
        userId == other.userId &&
        created == other.created &&
        permission == other.permission &&
        reportId == other.reportId;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, userId.hashCode), created.hashCode),
            permission.hashCode),
        reportId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PermissionPartialInfo')
          ..add('userId', userId)
          ..add('created', created)
          ..add('permission', permission)
          ..add('reportId', reportId))
        .toString();
  }
}

class PermissionPartialInfoBuilder
    implements Builder<PermissionPartialInfo, PermissionPartialInfoBuilder> {
  _$PermissionPartialInfo? _$v;

  String? _userId;

  String? get userId => _$this._userId;

  set userId(String? userId) => _$this._userId = userId;

  Date? _created;

  Date? get created => _$this._created;

  set created(Date? created) => _$this._created = created;

  bool? _permission;

  bool? get permission => _$this._permission;

  set permission(bool? permission) => _$this._permission = permission;

  String? _reportId;

  String? get reportId => _$this._reportId;

  set reportId(String? reportId) => _$this._reportId = reportId;

  PermissionPartialInfoBuilder() {
    PermissionPartialInfo._defaults(this);
  }

  PermissionPartialInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userId = $v.userId;
      _created = $v.created;
      _permission = $v.permission;
      _reportId = $v.reportId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PermissionPartialInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PermissionPartialInfo;
  }

  @override
  void update(void Function(PermissionPartialInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PermissionPartialInfo build() => _build();

  _$PermissionPartialInfo _build() {
    final _$result = _$v ??
        new _$PermissionPartialInfo._(
            userId: BuiltValueNullFieldError.checkNotNull(
                userId, r'PermissionPartialInfo', 'userId'),
            created: BuiltValueNullFieldError.checkNotNull(
                created, r'PermissionPartialInfo', 'created'),
            permission: BuiltValueNullFieldError.checkNotNull(
                permission, r'PermissionPartialInfo', 'permission'),
            reportId: BuiltValueNullFieldError.checkNotNull(
                reportId, r'PermissionPartialInfo', 'reportId'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
