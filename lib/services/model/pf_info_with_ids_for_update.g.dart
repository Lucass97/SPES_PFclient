// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pf_info_with_ids_for_update.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PfInfoWithIdsForUpdate extends PfInfoWithIdsForUpdate {
  @override
  final String pfId;
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
  final BuiltList<MaritalStatus>? maritalStatusListToAdd;
  @override
  final BuiltList<Address>? addressListToAdd;
  @override
  final BuiltList<Citizenship>? citizenshipListToAdd;
  @override
  final BuiltList<String>? maritalStatusListToDelete;
  @override
  final BuiltList<String>? addressListToDelete;
  @override
  final BuiltList<String>? citizenshipListToDelete;
  @override
  final BuiltMap<String, MaritalStatus>? maritalStatusListToUpdate;
  @override
  final BuiltMap<String, Address>? addressListToUpdate;
  @override
  final BuiltMap<String, Citizenship>? citizenshipListToUpdate;

  factory _$PfInfoWithIdsForUpdate(
          [void Function(PfInfoWithIdsForUpdateBuilder)? updates]) =>
      (new PfInfoWithIdsForUpdateBuilder()..update(updates))._build();

  _$PfInfoWithIdsForUpdate._(
      {required this.pfId,
      this.cf,
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
      this.maritalStatusListToAdd,
      this.addressListToAdd,
      this.citizenshipListToAdd,
      this.maritalStatusListToDelete,
      this.addressListToDelete,
      this.citizenshipListToDelete,
      this.maritalStatusListToUpdate,
      this.addressListToUpdate,
      this.citizenshipListToUpdate})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        pfId, r'PfInfoWithIdsForUpdate', 'pfId');
  }

  @override
  PfInfoWithIdsForUpdate rebuild(
          void Function(PfInfoWithIdsForUpdateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PfInfoWithIdsForUpdateBuilder toBuilder() =>
      new PfInfoWithIdsForUpdateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PfInfoWithIdsForUpdate &&
        pfId == other.pfId &&
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
        maritalStatusListToAdd == other.maritalStatusListToAdd &&
        addressListToAdd == other.addressListToAdd &&
        citizenshipListToAdd == other.citizenshipListToAdd &&
        maritalStatusListToDelete == other.maritalStatusListToDelete &&
        addressListToDelete == other.addressListToDelete &&
        citizenshipListToDelete == other.citizenshipListToDelete &&
        maritalStatusListToUpdate == other.maritalStatusListToUpdate &&
        addressListToUpdate == other.addressListToUpdate &&
        citizenshipListToUpdate == other.citizenshipListToUpdate;
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
                                                                            $jc($jc($jc($jc($jc($jc($jc($jc($jc(0, pfId.hashCode), cf.hashCode), firstname.hashCode), lastname.hashCode), fullname.hashCode), gender.hashCode), nicknames.hashCode), birthDate.hashCode),
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
                                        maritalStatusListToAdd.hashCode),
                                    addressListToAdd.hashCode),
                                citizenshipListToAdd.hashCode),
                            maritalStatusListToDelete.hashCode),
                        addressListToDelete.hashCode),
                    citizenshipListToDelete.hashCode),
                maritalStatusListToUpdate.hashCode),
            addressListToUpdate.hashCode),
        citizenshipListToUpdate.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PfInfoWithIdsForUpdate')
          ..add('pfId', pfId)
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
          ..add('maritalStatusListToAdd', maritalStatusListToAdd)
          ..add('addressListToAdd', addressListToAdd)
          ..add('citizenshipListToAdd', citizenshipListToAdd)
          ..add('maritalStatusListToDelete', maritalStatusListToDelete)
          ..add('addressListToDelete', addressListToDelete)
          ..add('citizenshipListToDelete', citizenshipListToDelete)
          ..add('maritalStatusListToUpdate', maritalStatusListToUpdate)
          ..add('addressListToUpdate', addressListToUpdate)
          ..add('citizenshipListToUpdate', citizenshipListToUpdate))
        .toString();
  }
}

class PfInfoWithIdsForUpdateBuilder
    implements Builder<PfInfoWithIdsForUpdate, PfInfoWithIdsForUpdateBuilder> {
  _$PfInfoWithIdsForUpdate? _$v;

  String? _pfId;

  String? get pfId => _$this._pfId;

  set pfId(String? pfId) => _$this._pfId = pfId;

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

  ListBuilder<MaritalStatus>? _maritalStatusListToAdd;

  ListBuilder<MaritalStatus> get maritalStatusListToAdd =>
      _$this._maritalStatusListToAdd ??= new ListBuilder<MaritalStatus>();

  set maritalStatusListToAdd(
          ListBuilder<MaritalStatus>? maritalStatusListToAdd) =>
      _$this._maritalStatusListToAdd = maritalStatusListToAdd;

  ListBuilder<Address>? _addressListToAdd;

  ListBuilder<Address> get addressListToAdd =>
      _$this._addressListToAdd ??= new ListBuilder<Address>();

  set addressListToAdd(ListBuilder<Address>? addressListToAdd) =>
      _$this._addressListToAdd = addressListToAdd;

  ListBuilder<Citizenship>? _citizenshipListToAdd;

  ListBuilder<Citizenship> get citizenshipListToAdd =>
      _$this._citizenshipListToAdd ??= new ListBuilder<Citizenship>();

  set citizenshipListToAdd(ListBuilder<Citizenship>? citizenshipListToAdd) =>
      _$this._citizenshipListToAdd = citizenshipListToAdd;

  ListBuilder<String>? _maritalStatusListToDelete;

  ListBuilder<String> get maritalStatusListToDelete =>
      _$this._maritalStatusListToDelete ??= new ListBuilder<String>();

  set maritalStatusListToDelete(
          ListBuilder<String>? maritalStatusListToDelete) =>
      _$this._maritalStatusListToDelete = maritalStatusListToDelete;

  ListBuilder<String>? _addressListToDelete;

  ListBuilder<String> get addressListToDelete =>
      _$this._addressListToDelete ??= new ListBuilder<String>();

  set addressListToDelete(ListBuilder<String>? addressListToDelete) =>
      _$this._addressListToDelete = addressListToDelete;

  ListBuilder<String>? _citizenshipListToDelete;

  ListBuilder<String> get citizenshipListToDelete =>
      _$this._citizenshipListToDelete ??= new ListBuilder<String>();

  set citizenshipListToDelete(ListBuilder<String>? citizenshipListToDelete) =>
      _$this._citizenshipListToDelete = citizenshipListToDelete;

  MapBuilder<String, MaritalStatus>? _maritalStatusListToUpdate;

  MapBuilder<String, MaritalStatus> get maritalStatusListToUpdate =>
      _$this._maritalStatusListToUpdate ??=
          new MapBuilder<String, MaritalStatus>();

  set maritalStatusListToUpdate(
          MapBuilder<String, MaritalStatus>? maritalStatusListToUpdate) =>
      _$this._maritalStatusListToUpdate = maritalStatusListToUpdate;

  MapBuilder<String, Address>? _addressListToUpdate;

  MapBuilder<String, Address> get addressListToUpdate =>
      _$this._addressListToUpdate ??= new MapBuilder<String, Address>();

  set addressListToUpdate(MapBuilder<String, Address>? addressListToUpdate) =>
      _$this._addressListToUpdate = addressListToUpdate;

  MapBuilder<String, Citizenship>? _citizenshipListToUpdate;

  MapBuilder<String, Citizenship> get citizenshipListToUpdate =>
      _$this._citizenshipListToUpdate ??= new MapBuilder<String, Citizenship>();

  set citizenshipListToUpdate(
          MapBuilder<String, Citizenship>? citizenshipListToUpdate) =>
      _$this._citizenshipListToUpdate = citizenshipListToUpdate;

  PfInfoWithIdsForUpdateBuilder() {
    PfInfoWithIdsForUpdate._defaults(this);
  }

  PfInfoWithIdsForUpdateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _pfId = $v.pfId;
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
      _maritalStatusListToAdd = $v.maritalStatusListToAdd?.toBuilder();
      _addressListToAdd = $v.addressListToAdd?.toBuilder();
      _citizenshipListToAdd = $v.citizenshipListToAdd?.toBuilder();
      _maritalStatusListToDelete = $v.maritalStatusListToDelete?.toBuilder();
      _addressListToDelete = $v.addressListToDelete?.toBuilder();
      _citizenshipListToDelete = $v.citizenshipListToDelete?.toBuilder();
      _maritalStatusListToUpdate = $v.maritalStatusListToUpdate?.toBuilder();
      _addressListToUpdate = $v.addressListToUpdate?.toBuilder();
      _citizenshipListToUpdate = $v.citizenshipListToUpdate?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PfInfoWithIdsForUpdate other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PfInfoWithIdsForUpdate;
  }

  @override
  void update(void Function(PfInfoWithIdsForUpdateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PfInfoWithIdsForUpdate build() => _build();

  _$PfInfoWithIdsForUpdate _build() {
    _$PfInfoWithIdsForUpdate _$result;
    try {
      _$result = _$v ??
          new _$PfInfoWithIdsForUpdate._(
              pfId: BuiltValueNullFieldError.checkNotNull(
                  pfId, r'PfInfoWithIdsForUpdate', 'pfId'),
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
              maritalStatusListToAdd: _maritalStatusListToAdd?.build(),
              addressListToAdd: _addressListToAdd?.build(),
              citizenshipListToAdd: _citizenshipListToAdd?.build(),
              maritalStatusListToDelete: _maritalStatusListToDelete?.build(),
              addressListToDelete: _addressListToDelete?.build(),
              citizenshipListToDelete: _citizenshipListToDelete?.build(),
              maritalStatusListToUpdate: _maritalStatusListToUpdate?.build(),
              addressListToUpdate: _addressListToUpdate?.build(),
              citizenshipListToUpdate: _citizenshipListToUpdate?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'maritalStatusListToAdd';
        _maritalStatusListToAdd?.build();
        _$failedField = 'addressListToAdd';
        _addressListToAdd?.build();
        _$failedField = 'citizenshipListToAdd';
        _citizenshipListToAdd?.build();
        _$failedField = 'maritalStatusListToDelete';
        _maritalStatusListToDelete?.build();
        _$failedField = 'addressListToDelete';
        _addressListToDelete?.build();
        _$failedField = 'citizenshipListToDelete';
        _citizenshipListToDelete?.build();
        _$failedField = 'maritalStatusListToUpdate';
        _maritalStatusListToUpdate?.build();
        _$failedField = 'addressListToUpdate';
        _addressListToUpdate?.build();
        _$failedField = 'citizenshipListToUpdate';
        _citizenshipListToUpdate?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PfInfoWithIdsForUpdate', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
