// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_only_id.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReportOnlyId extends ReportOnlyId {
  @override
  final String reportId;

  factory _$ReportOnlyId([void Function(ReportOnlyIdBuilder)? updates]) =>
      (new ReportOnlyIdBuilder()..update(updates))._build();

  _$ReportOnlyId._({required this.reportId}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        reportId, r'ReportOnlyId', 'reportId');
  }

  @override
  ReportOnlyId rebuild(void Function(ReportOnlyIdBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReportOnlyIdBuilder toBuilder() => new ReportOnlyIdBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReportOnlyId && reportId == other.reportId;
  }

  @override
  int get hashCode {
    return $jf($jc(0, reportId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ReportOnlyId')
          ..add('reportId', reportId))
        .toString();
  }
}

class ReportOnlyIdBuilder
    implements Builder<ReportOnlyId, ReportOnlyIdBuilder> {
  _$ReportOnlyId? _$v;

  String? _reportId;

  String? get reportId => _$this._reportId;

  set reportId(String? reportId) => _$this._reportId = reportId;

  ReportOnlyIdBuilder() {
    ReportOnlyId._defaults(this);
  }

  ReportOnlyIdBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _reportId = $v.reportId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReportOnlyId other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ReportOnlyId;
  }

  @override
  void update(void Function(ReportOnlyIdBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReportOnlyId build() => _build();

  _$ReportOnlyId _build() {
    final _$result = _$v ??
        new _$ReportOnlyId._(
            reportId: BuiltValueNullFieldError.checkNotNull(
                reportId, r'ReportOnlyId', 'reportId'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
