// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'citizenship.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Citizenship extends Citizenship {
  @override
  final String nationId;
  @override
  final Date fromDate;

  factory _$Citizenship([void Function(CitizenshipBuilder)? updates]) =>
      (new CitizenshipBuilder()..update(updates))._build();

  _$Citizenship._({required this.nationId, required this.fromDate})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(nationId, r'Citizenship', 'nationId');
    BuiltValueNullFieldError.checkNotNull(fromDate, r'Citizenship', 'fromDate');
  }

  @override
  Citizenship rebuild(void Function(CitizenshipBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CitizenshipBuilder toBuilder() => new CitizenshipBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Citizenship &&
        nationId == other.nationId &&
        fromDate == other.fromDate;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, nationId.hashCode), fromDate.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Citizenship')
          ..add('nationId', nationId)
          ..add('fromDate', fromDate))
        .toString();
  }
}

class CitizenshipBuilder implements Builder<Citizenship, CitizenshipBuilder> {
  _$Citizenship? _$v;

  String? _nationId;

  String? get nationId => _$this._nationId;

  set nationId(String? nationId) => _$this._nationId = nationId;

  Date? _fromDate;

  Date? get fromDate => _$this._fromDate;

  set fromDate(Date? fromDate) => _$this._fromDate = fromDate;

  CitizenshipBuilder() {
    Citizenship._defaults(this);
  }

  CitizenshipBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nationId = $v.nationId;
      _fromDate = $v.fromDate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Citizenship other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Citizenship;
  }

  @override
  void update(void Function(CitizenshipBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Citizenship build() => _build();

  _$Citizenship _build() {
    final _$result = _$v ??
        new _$Citizenship._(
            nationId: BuiltValueNullFieldError.checkNotNull(
                nationId, r'Citizenship', 'nationId'),
            fromDate: BuiltValueNullFieldError.checkNotNull(
                fromDate, r'Citizenship', 'fromDate'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
