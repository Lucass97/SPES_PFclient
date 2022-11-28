// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pf_info_with_ids.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PfInfoWithIds extends PfInfoWithIds {
  @override
  final String? cf;
  @override
  final String? firstname;
  @override
  final String? lastname;
  @override
  final String? fullname;
  @override
  final GenderEnum? gender;
  @override
  final String? nicknames;
  @override
  final Date? birthDate;
  @override
  final String? birthNationId;
  @override
  final String? birthGeoareaId;
  @override
  final String? birthCity;
  @override
  final String? cuiCode;
  @override
  final String? sanitaryDistrictId;
  @override
  final bool? isForeign;
  @override
  final bool? isAnonymous;
  @override
  final bool? verified;
  @override
  final bool? isDead;
  @override
  final Date? deathDate;
  @override
  final BuiltMap<String, MaritalStatus>? maritalStatusList;
  @override
  final BuiltMap<String, Address>? addressList;
  @override
  final BuiltMap<String, Citizenship>? citizenshipList;
  @override
  final String pfId;

  factory _$PfInfoWithIds([void Function(PfInfoWithIdsBuilder)? updates]) =>
      (new PfInfoWithIdsBuilder()..update(updates))._build();

  _$PfInfoWithIds._(
      {this.cf,
      this.firstname,
      this.lastname,
      this.fullname,
      this.gender,
      this.nicknames,
      this.birthDate,
      this.birthNationId,
      this.birthGeoareaId,
      this.birthCity,
      this.cuiCode,
      this.sanitaryDistrictId,
      this.isForeign,
      this.isAnonymous,
      this.verified,
      this.isDead,
      this.deathDate,
      this.maritalStatusList,
      this.addressList,
      this.citizenshipList,
      required this.pfId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(pfId, r'PfInfoWithIds', 'pfId');
  }

  @override
  PfInfoWithIds rebuild(void Function(PfInfoWithIdsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PfInfoWithIdsBuilder toBuilder() => new PfInfoWithIdsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PfInfoWithIds &&
        cf == other.cf &&
        firstname == other.firstname &&
        lastname == other.lastname &&
        fullname == other.fullname &&
        gender == other.gender &&
        nicknames == other.nicknames &&
        birthDate == other.birthDate &&
        birthNationId == other.birthNationId &&
        birthGeoareaId == other.birthGeoareaId &&
        birthCity == other.birthCity &&
        cuiCode == other.cuiCode &&
        sanitaryDistrictId == other.sanitaryDistrictId &&
        isForeign == other.isForeign &&
        isAnonymous == other.isAnonymous &&
        verified == other.verified &&
        isDead == other.isDead &&
        deathDate == other.deathDate &&
        maritalStatusList == other.maritalStatusList &&
        addressList == other.addressList &&
        citizenshipList == other.citizenshipList &&
        pfId == other.pfId;
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
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc($jc($jc(0, cf.hashCode), firstname.hashCode),
                                                                                lastname.hashCode),
                                                                            fullname.hashCode),
                                                                        gender.hashCode),
                                                                    nicknames.hashCode),
                                                                birthDate.hashCode),
                                                            birthNationId.hashCode),
                                                        birthGeoareaId.hashCode),
                                                    birthCity.hashCode),
                                                cuiCode.hashCode),
                                            sanitaryDistrictId.hashCode),
                                        isForeign.hashCode),
                                    isAnonymous.hashCode),
                                verified.hashCode),
                            isDead.hashCode),
                        deathDate.hashCode),
                    maritalStatusList.hashCode),
                addressList.hashCode),
            citizenshipList.hashCode),
        pfId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PfInfoWithIds')
          ..add('cf', cf)
          ..add('firstname', firstname)
          ..add('lastname', lastname)
          ..add('fullname', fullname)
          ..add('gender', gender)
          ..add('nicknames', nicknames)
          ..add('birthDate', birthDate)
          ..add('birthNationId', birthNationId)
          ..add('birthGeoareaId', birthGeoareaId)
          ..add('birthCity', birthCity)
          ..add('cuiCode', cuiCode)
          ..add('sanitaryDistrictId', sanitaryDistrictId)
          ..add('isForeign', isForeign)
          ..add('isAnonymous', isAnonymous)
          ..add('verified', verified)
          ..add('isDead', isDead)
          ..add('deathDate', deathDate)
          ..add('maritalStatusList', maritalStatusList)
          ..add('addressList', addressList)
          ..add('citizenshipList', citizenshipList)
          ..add('pfId', pfId))
        .toString();
  }
}

class PfInfoWithIdsBuilder
    implements Builder<PfInfoWithIds, PfInfoWithIdsBuilder> {
  _$PfInfoWithIds? _$v;

  String? _cf;

  String? get cf => _$this._cf;

  set cf(String? cf) => _$this._cf = cf;

  String? _firstname;

  String? get firstname => _$this._firstname;

  set firstname(String? firstname) => _$this._firstname = firstname;

  String? _lastname;

  String? get lastname => _$this._lastname;

  set lastname(String? lastname) => _$this._lastname = lastname;

  String? _fullname;

  String? get fullname => _$this._fullname;

  set fullname(String? fullname) => _$this._fullname = fullname;

  GenderEnum? _gender;

  GenderEnum? get gender => _$this._gender;

  set gender(GenderEnum? gender) => _$this._gender = gender;

  String? _nicknames;

  String? get nicknames => _$this._nicknames;

  set nicknames(String? nicknames) => _$this._nicknames = nicknames;

  Date? _birthDate;

  Date? get birthDate => _$this._birthDate;

  set birthDate(Date? birthDate) => _$this._birthDate = birthDate;

  String? _birthNationId;

  String? get birthNationId => _$this._birthNationId;

  set birthNationId(String? birthNationId) =>
      _$this._birthNationId = birthNationId;

  String? _birthGeoareaId;

  String? get birthGeoareaId => _$this._birthGeoareaId;

  set birthGeoareaId(String? birthGeoareaId) =>
      _$this._birthGeoareaId = birthGeoareaId;

  String? _birthCity;

  String? get birthCity => _$this._birthCity;

  set birthCity(String? birthCity) => _$this._birthCity = birthCity;

  String? _cuiCode;

  String? get cuiCode => _$this._cuiCode;

  set cuiCode(String? cuiCode) => _$this._cuiCode = cuiCode;

  String? _sanitaryDistrictId;

  String? get sanitaryDistrictId => _$this._sanitaryDistrictId;

  set sanitaryDistrictId(String? sanitaryDistrictId) =>
      _$this._sanitaryDistrictId = sanitaryDistrictId;

  bool? _isForeign;

  bool? get isForeign => _$this._isForeign;

  set isForeign(bool? isForeign) => _$this._isForeign = isForeign;

  bool? _isAnonymous;

  bool? get isAnonymous => _$this._isAnonymous;

  set isAnonymous(bool? isAnonymous) => _$this._isAnonymous = isAnonymous;

  bool? _verified;

  bool? get verified => _$this._verified;

  set verified(bool? verified) => _$this._verified = verified;

  bool? _isDead;

  bool? get isDead => _$this._isDead;

  set isDead(bool? isDead) => _$this._isDead = isDead;

  Date? _deathDate;

  Date? get deathDate => _$this._deathDate;

  set deathDate(Date? deathDate) => _$this._deathDate = deathDate;

  MapBuilder<String, MaritalStatus>? _maritalStatusList;

  MapBuilder<String, MaritalStatus> get maritalStatusList =>
      _$this._maritalStatusList ??= new MapBuilder<String, MaritalStatus>();

  set maritalStatusList(MapBuilder<String, MaritalStatus>? maritalStatusList) =>
      _$this._maritalStatusList = maritalStatusList;

  MapBuilder<String, Address>? _addressList;

  MapBuilder<String, Address> get addressList =>
      _$this._addressList ??= new MapBuilder<String, Address>();

  set addressList(MapBuilder<String, Address>? addressList) =>
      _$this._addressList = addressList;

  MapBuilder<String, Citizenship>? _citizenshipList;

  MapBuilder<String, Citizenship> get citizenshipList =>
      _$this._citizenshipList ??= new MapBuilder<String, Citizenship>();

  set citizenshipList(MapBuilder<String, Citizenship>? citizenshipList) =>
      _$this._citizenshipList = citizenshipList;

  String? _pfId;

  String? get pfId => _$this._pfId;

  set pfId(String? pfId) => _$this._pfId = pfId;

  PfInfoWithIdsBuilder() {
    PfInfoWithIds._defaults(this);
  }

  PfInfoWithIdsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _cf = $v.cf;
      _firstname = $v.firstname;
      _lastname = $v.lastname;
      _fullname = $v.fullname;
      _gender = $v.gender;
      _nicknames = $v.nicknames;
      _birthDate = $v.birthDate;
      _birthNationId = $v.birthNationId;
      _birthGeoareaId = $v.birthGeoareaId;
      _birthCity = $v.birthCity;
      _cuiCode = $v.cuiCode;
      _sanitaryDistrictId = $v.sanitaryDistrictId;
      _isForeign = $v.isForeign;
      _isAnonymous = $v.isAnonymous;
      _verified = $v.verified;
      _isDead = $v.isDead;
      _deathDate = $v.deathDate;
      _maritalStatusList = $v.maritalStatusList?.toBuilder();
      _addressList = $v.addressList?.toBuilder();
      _citizenshipList = $v.citizenshipList?.toBuilder();
      _pfId = $v.pfId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PfInfoWithIds other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PfInfoWithIds;
  }

  @override
  void update(void Function(PfInfoWithIdsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PfInfoWithIds build() => _build();

  _$PfInfoWithIds _build() {
    _$PfInfoWithIds _$result;
    try {
      _$result = _$v ??
          new _$PfInfoWithIds._(
              cf: cf,
              firstname: firstname,
              lastname: lastname,
              fullname: fullname,
              gender: gender,
              nicknames: nicknames,
              birthDate: birthDate,
              birthNationId: birthNationId,
              birthGeoareaId: birthGeoareaId,
              birthCity: birthCity,
              cuiCode: cuiCode,
              sanitaryDistrictId: sanitaryDistrictId,
              isForeign: isForeign,
              isAnonymous: isAnonymous,
              verified: verified,
              isDead: isDead,
              deathDate: deathDate,
              maritalStatusList: _maritalStatusList?.build(),
              addressList: _addressList?.build(),
              citizenshipList: _citizenshipList?.build(),
              pfId: BuiltValueNullFieldError.checkNotNull(
                  pfId, r'PfInfoWithIds', 'pfId'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'maritalStatusList';
        _maritalStatusList?.build();
        _$failedField = 'addressList';
        _addressList?.build();
        _$failedField = 'citizenshipList';
        _citizenshipList?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PfInfoWithIds', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
