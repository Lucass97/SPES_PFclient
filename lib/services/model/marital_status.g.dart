// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'marital_status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MaritalStatus extends MaritalStatus {
  @override
  final MaritalStatusEnum maritalStatusCode;
  @override
  final Date fromDate;

  factory _$MaritalStatus([void Function(MaritalStatusBuilder)? updates]) =>
      (new MaritalStatusBuilder()..update(updates))._build();

  _$MaritalStatus._({required this.maritalStatusCode, required this.fromDate})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        maritalStatusCode, r'MaritalStatus', 'maritalStatusCode');
    BuiltValueNullFieldError.checkNotNull(
        fromDate, r'MaritalStatus', 'fromDate');
  }

  @override
  MaritalStatus rebuild(void Function(MaritalStatusBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MaritalStatusBuilder toBuilder() => new MaritalStatusBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MaritalStatus &&
        maritalStatusCode == other.maritalStatusCode &&
        fromDate == other.fromDate;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, maritalStatusCode.hashCode), fromDate.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MaritalStatus')
          ..add('maritalStatusCode', maritalStatusCode)
          ..add('fromDate', fromDate))
        .toString();
  }
}

class MaritalStatusBuilder
    implements Builder<MaritalStatus, MaritalStatusBuilder> {
  _$MaritalStatus? _$v;

  MaritalStatusEnum? _maritalStatusCode;

  MaritalStatusEnum? get maritalStatusCode => _$this._maritalStatusCode;

  set maritalStatusCode(MaritalStatusEnum? maritalStatusCode) =>
      _$this._maritalStatusCode = maritalStatusCode;

  Date? _fromDate;

  Date? get fromDate => _$this._fromDate;

  set fromDate(Date? fromDate) => _$this._fromDate = fromDate;

  MaritalStatusBuilder() {
    MaritalStatus._defaults(this);
  }

  MaritalStatusBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _maritalStatusCode = $v.maritalStatusCode;
      _fromDate = $v.fromDate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MaritalStatus other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MaritalStatus;
  }

  @override
  void update(void Function(MaritalStatusBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MaritalStatus build() => _build();

  _$MaritalStatus _build() {
    final _$result = _$v ??
        new _$MaritalStatus._(
            maritalStatusCode: BuiltValueNullFieldError.checkNotNull(
                maritalStatusCode, r'MaritalStatus', 'maritalStatusCode'),
            fromDate: BuiltValueNullFieldError.checkNotNull(
                fromDate, r'MaritalStatus', 'fromDate'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
