// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LoginResponse extends LoginResponse {
  @override
  final String? jwt;
  @override
  final DateTime? expiresAt;
  @override
  final bool? firstAccess;

  factory _$LoginResponse([void Function(LoginResponseBuilder)? updates]) =>
      (new LoginResponseBuilder()..update(updates))._build();

  _$LoginResponse._({this.jwt, this.expiresAt, this.firstAccess}) : super._();

  @override
  LoginResponse rebuild(void Function(LoginResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LoginResponseBuilder toBuilder() => new LoginResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LoginResponse &&
        jwt == other.jwt &&
        expiresAt == other.expiresAt &&
        firstAccess == other.firstAccess;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, jwt.hashCode), expiresAt.hashCode), firstAccess.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LoginResponse')
          ..add('jwt', jwt)
          ..add('expiresAt', expiresAt)
          ..add('firstAccess', firstAccess))
        .toString();
  }
}

class LoginResponseBuilder
    implements Builder<LoginResponse, LoginResponseBuilder> {
  _$LoginResponse? _$v;

  String? _jwt;

  String? get jwt => _$this._jwt;

  set jwt(String? jwt) => _$this._jwt = jwt;

  DateTime? _expiresAt;

  DateTime? get expiresAt => _$this._expiresAt;

  set expiresAt(DateTime? expiresAt) => _$this._expiresAt = expiresAt;

  bool? _firstAccess;

  bool? get firstAccess => _$this._firstAccess;

  set firstAccess(bool? firstAccess) => _$this._firstAccess = firstAccess;

  LoginResponseBuilder() {
    LoginResponse._defaults(this);
  }

  LoginResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _jwt = $v.jwt;
      _expiresAt = $v.expiresAt;
      _firstAccess = $v.firstAccess;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LoginResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LoginResponse;
  }

  @override
  void update(void Function(LoginResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LoginResponse build() => _build();

  _$LoginResponse _build() {
    final _$result = _$v ??
        new _$LoginResponse._(
            jwt: jwt, expiresAt: expiresAt, firstAccess: firstAccess);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
