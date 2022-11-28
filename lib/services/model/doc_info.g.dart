// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doc_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DocInfo extends DocInfo {
  @override
  final String id;
  @override
  final String tipologia;
  @override
  final Date uploadDate;
  @override
  final String entity;
  @override
  final String number;
  @override
  final String placeOfIssue;
  @override
  final Date expirationDate;
  @override
  final Date releaseDate;

  factory _$DocInfo([void Function(DocInfoBuilder)? updates]) =>
      (new DocInfoBuilder()..update(updates))._build();

  _$DocInfo._(
      {required this.id,
      required this.tipologia,
      required this.uploadDate,
      required this.entity,
      required this.number,
      required this.placeOfIssue,
      required this.expirationDate,
      required this.releaseDate})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'DocInfo', 'id');
    BuiltValueNullFieldError.checkNotNull(tipologia, r'DocInfo', 'tipologia');
    BuiltValueNullFieldError.checkNotNull(uploadDate, r'DocInfo', 'uploadDate');
    BuiltValueNullFieldError.checkNotNull(entity, r'DocInfo', 'entity');
    BuiltValueNullFieldError.checkNotNull(number, r'DocInfo', 'number');
    BuiltValueNullFieldError.checkNotNull(
        placeOfIssue, r'DocInfo', 'placeOfIssue');
    BuiltValueNullFieldError.checkNotNull(
        expirationDate, r'DocInfo', 'expirationDate');
    BuiltValueNullFieldError.checkNotNull(
        releaseDate, r'DocInfo', 'releaseDate');
  }

  @override
  DocInfo rebuild(void Function(DocInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DocInfoBuilder toBuilder() => new DocInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DocInfo &&
        id == other.id &&
        tipologia == other.tipologia &&
        uploadDate == other.uploadDate &&
        entity == other.entity &&
        number == other.number &&
        placeOfIssue == other.placeOfIssue &&
        expirationDate == other.expirationDate &&
        releaseDate == other.releaseDate;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, id.hashCode), tipologia.hashCode),
                            uploadDate.hashCode),
                        entity.hashCode),
                    number.hashCode),
                placeOfIssue.hashCode),
            expirationDate.hashCode),
        releaseDate.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DocInfo')
          ..add('id', id)
          ..add('tipologia', tipologia)
          ..add('uploadDate', uploadDate)
          ..add('entity', entity)
          ..add('number', number)
          ..add('placeOfIssue', placeOfIssue)
          ..add('expirationDate', expirationDate)
          ..add('releaseDate', releaseDate))
        .toString();
  }
}

class DocInfoBuilder implements Builder<DocInfo, DocInfoBuilder> {
  _$DocInfo? _$v;

  String? _id;

  String? get id => _$this._id;

  set id(String? id) => _$this._id = id;

  String? _tipologia;

  String? get tipologia => _$this._tipologia;

  set tipologia(String? tipologia) => _$this._tipologia = tipologia;

  Date? _uploadDate;

  Date? get uploadDate => _$this._uploadDate;

  set uploadDate(Date? uploadDate) => _$this._uploadDate = uploadDate;

  String? _entity;

  String? get entity => _$this._entity;

  set entity(String? entity) => _$this._entity = entity;

  String? _number;

  String? get number => _$this._number;

  set number(String? number) => _$this._number = number;

  String? _placeOfIssue;

  String? get placeOfIssue => _$this._placeOfIssue;

  set placeOfIssue(String? placeOfIssue) => _$this._placeOfIssue = placeOfIssue;

  Date? _expirationDate;

  Date? get expirationDate => _$this._expirationDate;

  set expirationDate(Date? expirationDate) =>
      _$this._expirationDate = expirationDate;

  Date? _releaseDate;

  Date? get releaseDate => _$this._releaseDate;

  set releaseDate(Date? releaseDate) => _$this._releaseDate = releaseDate;

  DocInfoBuilder() {
    DocInfo._defaults(this);
  }

  DocInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _tipologia = $v.tipologia;
      _uploadDate = $v.uploadDate;
      _entity = $v.entity;
      _number = $v.number;
      _placeOfIssue = $v.placeOfIssue;
      _expirationDate = $v.expirationDate;
      _releaseDate = $v.releaseDate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DocInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DocInfo;
  }

  @override
  void update(void Function(DocInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DocInfo build() => _build();

  _$DocInfo _build() {
    final _$result = _$v ??
        new _$DocInfo._(
            id: BuiltValueNullFieldError.checkNotNull(id, r'DocInfo', 'id'),
            tipologia: BuiltValueNullFieldError.checkNotNull(
                tipologia, r'DocInfo', 'tipologia'),
            uploadDate: BuiltValueNullFieldError.checkNotNull(
                uploadDate, r'DocInfo', 'uploadDate'),
            entity: BuiltValueNullFieldError.checkNotNull(
                entity, r'DocInfo', 'entity'),
            number: BuiltValueNullFieldError.checkNotNull(
                number, r'DocInfo', 'number'),
            placeOfIssue: BuiltValueNullFieldError.checkNotNull(
                placeOfIssue, r'DocInfo', 'placeOfIssue'),
            expirationDate: BuiltValueNullFieldError.checkNotNull(
                expirationDate, r'DocInfo', 'expirationDate'),
            releaseDate: BuiltValueNullFieldError.checkNotNull(
                releaseDate, r'DocInfo', 'releaseDate'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
