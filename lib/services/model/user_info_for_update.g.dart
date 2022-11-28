// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_info_for_update.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserInfoForUpdate extends UserInfoForUpdate {
  @override
  final String oldPwd;
  @override
  final String newPwd;

  factory _$UserInfoForUpdate(
          [void Function(UserInfoForUpdateBuilder)? updates]) =>
      (new UserInfoForUpdateBuilder()..update(updates))._build();

  _$UserInfoForUpdate._({required this.oldPwd, required this.newPwd})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        oldPwd, r'UserInfoForUpdate', 'oldPwd');
    BuiltValueNullFieldError.checkNotNull(
        newPwd, r'UserInfoForUpdate', 'newPwd');
  }

  @override
  UserInfoForUpdate rebuild(void Function(UserInfoForUpdateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserInfoForUpdateBuilder toBuilder() =>
      new UserInfoForUpdateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserInfoForUpdate &&
        oldPwd == other.oldPwd &&
        newPwd == other.newPwd;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, oldPwd.hashCode), newPwd.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserInfoForUpdate')
          ..add('oldPwd', oldPwd)
          ..add('newPwd', newPwd))
        .toString();
  }
}

class UserInfoForUpdateBuilder
    implements Builder<UserInfoForUpdate, UserInfoForUpdateBuilder> {
  _$UserInfoForUpdate? _$v;

  String? _oldPwd;

  String? get oldPwd => _$this._oldPwd;

  set oldPwd(String? oldPwd) => _$this._oldPwd = oldPwd;

  String? _newPwd;

  String? get newPwd => _$this._newPwd;

  set newPwd(String? newPwd) => _$this._newPwd = newPwd;

  UserInfoForUpdateBuilder() {
    UserInfoForUpdate._defaults(this);
  }

  UserInfoForUpdateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _oldPwd = $v.oldPwd;
      _newPwd = $v.newPwd;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserInfoForUpdate other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserInfoForUpdate;
  }

  @override
  void update(void Function(UserInfoForUpdateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserInfoForUpdate build() => _build();

  _$UserInfoForUpdate _build() {
    final _$result = _$v ??
        new _$UserInfoForUpdate._(
            oldPwd: BuiltValueNullFieldError.checkNotNull(
                oldPwd, r'UserInfoForUpdate', 'oldPwd'),
            newPwd: BuiltValueNullFieldError.checkNotNull(
                newPwd, r'UserInfoForUpdate', 'newPwd'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
