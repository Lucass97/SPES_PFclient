// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doc_partial_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DocPartialInfo extends DocPartialInfo {
  @override
  final String id;
  @override
  final String tipologia;
  @override
  final Date uploadDate;

  factory _$DocPartialInfo([void Function(DocPartialInfoBuilder)? updates]) =>
      (new DocPartialInfoBuilder()..update(updates))._build();

  _$DocPartialInfo._(
      {required this.id, required this.tipologia, required this.uploadDate})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'DocPartialInfo', 'id');
    BuiltValueNullFieldError.checkNotNull(
        tipologia, r'DocPartialInfo', 'tipologia');
    BuiltValueNullFieldError.checkNotNull(
        uploadDate, r'DocPartialInfo', 'uploadDate');
  }

  @override
  DocPartialInfo rebuild(void Function(DocPartialInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DocPartialInfoBuilder toBuilder() =>
      new DocPartialInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DocPartialInfo &&
        id == other.id &&
        tipologia == other.tipologia &&
        uploadDate == other.uploadDate;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, id.hashCode), tipologia.hashCode), uploadDate.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DocPartialInfo')
          ..add('id', id)
          ..add('tipologia', tipologia)
          ..add('uploadDate', uploadDate))
        .toString();
  }
}

class DocPartialInfoBuilder
    implements Builder<DocPartialInfo, DocPartialInfoBuilder> {
  _$DocPartialInfo? _$v;

  String? _id;

  String? get id => _$this._id;

  set id(String? id) => _$this._id = id;

  String? _tipologia;

  String? get tipologia => _$this._tipologia;

  set tipologia(String? tipologia) => _$this._tipologia = tipologia;

  Date? _uploadDate;

  Date? get uploadDate => _$this._uploadDate;

  set uploadDate(Date? uploadDate) => _$this._uploadDate = uploadDate;

  DocPartialInfoBuilder() {
    DocPartialInfo._defaults(this);
  }

  DocPartialInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _tipologia = $v.tipologia;
      _uploadDate = $v.uploadDate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DocPartialInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DocPartialInfo;
  }

  @override
  void update(void Function(DocPartialInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DocPartialInfo build() => _build();

  _$DocPartialInfo _build() {
    final _$result = _$v ??
        new _$DocPartialInfo._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'DocPartialInfo', 'id'),
            tipologia: BuiltValueNullFieldError.checkNotNull(
                tipologia, r'DocPartialInfo', 'tipologia'),
            uploadDate: BuiltValueNullFieldError.checkNotNull(
                uploadDate, r'DocPartialInfo', 'uploadDate'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
