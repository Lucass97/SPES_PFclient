// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'permission_to_modify.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PermissionToModify extends PermissionToModify {
  @override
  final String userId;
  @override
  final String reportId;
  @override
  final bool permission;

  factory _$PermissionToModify(
          [void Function(PermissionToModifyBuilder)? updates]) =>
      (new PermissionToModifyBuilder()..update(updates))._build();

  _$PermissionToModify._(
      {required this.userId, required this.reportId, required this.permission})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        userId, r'PermissionToModify', 'userId');
    BuiltValueNullFieldError.checkNotNull(
        reportId, r'PermissionToModify', 'reportId');
    BuiltValueNullFieldError.checkNotNull(
        permission, r'PermissionToModify', 'permission');
  }

  @override
  PermissionToModify rebuild(
          void Function(PermissionToModifyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PermissionToModifyBuilder toBuilder() =>
      new PermissionToModifyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PermissionToModify &&
        userId == other.userId &&
        reportId == other.reportId &&
        permission == other.permission;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, userId.hashCode), reportId.hashCode), permission.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PermissionToModify')
          ..add('userId', userId)
          ..add('reportId', reportId)
          ..add('permission', permission))
        .toString();
  }
}

class PermissionToModifyBuilder
    implements Builder<PermissionToModify, PermissionToModifyBuilder> {
  _$PermissionToModify? _$v;

  String? _userId;

  String? get userId => _$this._userId;

  set userId(String? userId) => _$this._userId = userId;

  String? _reportId;

  String? get reportId => _$this._reportId;

  set reportId(String? reportId) => _$this._reportId = reportId;

  bool? _permission;

  bool? get permission => _$this._permission;

  set permission(bool? permission) => _$this._permission = permission;

  PermissionToModifyBuilder() {
    PermissionToModify._defaults(this);
  }

  PermissionToModifyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userId = $v.userId;
      _reportId = $v.reportId;
      _permission = $v.permission;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PermissionToModify other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PermissionToModify;
  }

  @override
  void update(void Function(PermissionToModifyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PermissionToModify build() => _build();

  _$PermissionToModify _build() {
    final _$result = _$v ??
        new _$PermissionToModify._(
            userId: BuiltValueNullFieldError.checkNotNull(
                userId, r'PermissionToModify', 'userId'),
            reportId: BuiltValueNullFieldError.checkNotNull(
                reportId, r'PermissionToModify', 'reportId'),
            permission: BuiltValueNullFieldError.checkNotNull(
                permission, r'PermissionToModify', 'permission'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
