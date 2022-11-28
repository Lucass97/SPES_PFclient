// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pf_id.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PfId extends PfId {
  @override
  final String id;

  factory _$PfId([void Function(PfIdBuilder)? updates]) =>
      (new PfIdBuilder()..update(updates))._build();

  _$PfId._({required this.id}) : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'PfId', 'id');
  }

  @override
  PfId rebuild(void Function(PfIdBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PfIdBuilder toBuilder() => new PfIdBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PfId && id == other.id;
  }

  @override
  int get hashCode {
    return $jf($jc(0, id.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PfId')..add('id', id)).toString();
  }
}

class PfIdBuilder implements Builder<PfId, PfIdBuilder> {
  _$PfId? _$v;

  String? _id;

  String? get id => _$this._id;

  set id(String? id) => _$this._id = id;

  PfIdBuilder() {
    PfId._defaults(this);
  }

  PfIdBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PfId other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PfId;
  }

  @override
  void update(void Function(PfIdBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PfId build() => _build();

  _$PfId _build() {
    final _$result = _$v ??
        new _$PfId._(
            id: BuiltValueNullFieldError.checkNotNull(id, r'PfId', 'id'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
