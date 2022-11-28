// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pf_partial_info_with_ids.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PFPartialInfoWithIds extends PFPartialInfoWithIds {
  @override
  final String pfId;
  @override
  final String? firstname;
  @override
  final String? lastname;
  @override
  final String? cf;
  @override
  final String? cuiCode;
  @override
  final GenderEnum? gender;
  @override
  final Date? birthDate;
  @override
  final String? nicknames;
  @override
  final bool? isForeign;
  @override
  final bool? isAnonymous;
  @override
  final bool? isDead;
  @override
  final bool? verified;

  factory _$PFPartialInfoWithIds(
          [void Function(PFPartialInfoWithIdsBuilder)? updates]) =>
      (new PFPartialInfoWithIdsBuilder()..update(updates))._build();

  _$PFPartialInfoWithIds._(
      {required this.pfId,
      this.firstname,
      this.lastname,
      this.cf,
      this.cuiCode,
      this.gender,
      this.birthDate,
      this.nicknames,
      this.isForeign,
      this.isAnonymous,
      this.isDead,
      this.verified})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        pfId, r'PFPartialInfoWithIds', 'pfId');
  }

  @override
  PFPartialInfoWithIds rebuild(
          void Function(PFPartialInfoWithIdsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PFPartialInfoWithIdsBuilder toBuilder() =>
      new PFPartialInfoWithIdsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PFPartialInfoWithIds &&
        pfId == other.pfId &&
        firstname == other.firstname &&
        lastname == other.lastname &&
        cf == other.cf &&
        cuiCode == other.cuiCode &&
        gender == other.gender &&
        birthDate == other.birthDate &&
        nicknames == other.nicknames &&
        isForeign == other.isForeign &&
        isAnonymous == other.isAnonymous &&
        isDead == other.isDead &&
        verified == other.verified;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc($jc(0, pfId.hashCode),
                                                firstname.hashCode),
                                            lastname.hashCode),
                                        cf.hashCode),
                                    cuiCode.hashCode),
                                gender.hashCode),
                            birthDate.hashCode),
                        nicknames.hashCode),
                    isForeign.hashCode),
                isAnonymous.hashCode),
            isDead.hashCode),
        verified.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PFPartialInfoWithIds')
          ..add('pfId', pfId)
          ..add('firstname', firstname)
          ..add('lastname', lastname)
          ..add('cf', cf)
          ..add('cuiCode', cuiCode)
          ..add('gender', gender)
          ..add('birthDate', birthDate)
          ..add('nicknames', nicknames)
          ..add('isForeign', isForeign)
          ..add('isAnonymous', isAnonymous)
          ..add('isDead', isDead)
          ..add('verified', verified))
        .toString();
  }
}

class PFPartialInfoWithIdsBuilder
    implements Builder<PFPartialInfoWithIds, PFPartialInfoWithIdsBuilder> {
  _$PFPartialInfoWithIds? _$v;

  String? _pfId;

  String? get pfId => _$this._pfId;

  set pfId(String? pfId) => _$this._pfId = pfId;

  String? _firstname;

  String? get firstname => _$this._firstname;

  set firstname(String? firstname) => _$this._firstname = firstname;

  String? _lastname;

  String? get lastname => _$this._lastname;

  set lastname(String? lastname) => _$this._lastname = lastname;

  String? _cf;

  String? get cf => _$this._cf;

  set cf(String? cf) => _$this._cf = cf;

  String? _cuiCode;

  String? get cuiCode => _$this._cuiCode;

  set cuiCode(String? cuiCode) => _$this._cuiCode = cuiCode;

  GenderEnum? _gender;

  GenderEnum? get gender => _$this._gender;

  set gender(GenderEnum? gender) => _$this._gender = gender;

  Date? _birthDate;

  Date? get birthDate => _$this._birthDate;

  set birthDate(Date? birthDate) => _$this._birthDate = birthDate;

  String? _nicknames;

  String? get nicknames => _$this._nicknames;

  set nicknames(String? nicknames) => _$this._nicknames = nicknames;

  bool? _isForeign;

  bool? get isForeign => _$this._isForeign;

  set isForeign(bool? isForeign) => _$this._isForeign = isForeign;

  bool? _isAnonymous;

  bool? get isAnonymous => _$this._isAnonymous;

  set isAnonymous(bool? isAnonymous) => _$this._isAnonymous = isAnonymous;

  bool? _isDead;

  bool? get isDead => _$this._isDead;

  set isDead(bool? isDead) => _$this._isDead = isDead;

  bool? _verified;

  bool? get verified => _$this._verified;

  set verified(bool? verified) => _$this._verified = verified;

  PFPartialInfoWithIdsBuilder() {
    PFPartialInfoWithIds._defaults(this);
  }

  PFPartialInfoWithIdsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _pfId = $v.pfId;
      _firstname = $v.firstname;
      _lastname = $v.lastname;
      _cf = $v.cf;
      _cuiCode = $v.cuiCode;
      _gender = $v.gender;
      _birthDate = $v.birthDate;
      _nicknames = $v.nicknames;
      _isForeign = $v.isForeign;
      _isAnonymous = $v.isAnonymous;
      _isDead = $v.isDead;
      _verified = $v.verified;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PFPartialInfoWithIds other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PFPartialInfoWithIds;
  }

  @override
  void update(void Function(PFPartialInfoWithIdsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PFPartialInfoWithIds build() => _build();

  _$PFPartialInfoWithIds _build() {
    final _$result = _$v ??
        new _$PFPartialInfoWithIds._(
            pfId: BuiltValueNullFieldError.checkNotNull(
                pfId, r'PFPartialInfoWithIds', 'pfId'),
            firstname: firstname,
            lastname: lastname,
            cf: cf,
            cuiCode: cuiCode,
            gender: gender,
            birthDate: birthDate,
            nicknames: nicknames,
            isForeign: isForeign,
            isAnonymous: isAnonymous,
            isDead: isDead,
            verified: verified);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
