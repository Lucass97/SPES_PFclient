// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_info_with_pwd.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserInfoWithPwd extends UserInfoWithPwd {
  @override
  final String username;

  factory _$UserInfoWithPwd([void Function(UserInfoWithPwdBuilder)? updates]) =>
      (new UserInfoWithPwdBuilder()..update(updates))._build();

  _$UserInfoWithPwd._({required this.username}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        username, r'UserInfoWithPwd', 'username');
  }

  @override
  UserInfoWithPwd rebuild(void Function(UserInfoWithPwdBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserInfoWithPwdBuilder toBuilder() =>
      new UserInfoWithPwdBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserInfoWithPwd && username == other.username;
  }

  @override
  int get hashCode {
    return $jf($jc(0, username.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserInfoWithPwd')
          ..add('username', username))
        .toString();
  }
}

class UserInfoWithPwdBuilder
    implements Builder<UserInfoWithPwd, UserInfoWithPwdBuilder> {
  _$UserInfoWithPwd? _$v;

  String? _username;

  String? get username => _$this._username;

  set username(String? username) => _$this._username = username;

  UserInfoWithPwdBuilder() {
    UserInfoWithPwd._defaults(this);
  }

  UserInfoWithPwdBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _username = $v.username;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserInfoWithPwd other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserInfoWithPwd;
  }

  @override
  void update(void Function(UserInfoWithPwdBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserInfoWithPwd build() => _build();

  _$UserInfoWithPwd _build() {
    final _$result = _$v ??
        new _$UserInfoWithPwd._(
            username: BuiltValueNullFieldError.checkNotNull(
                username, r'UserInfoWithPwd', 'username'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
