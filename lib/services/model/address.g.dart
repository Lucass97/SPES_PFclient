// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Address extends Address {
  @override
  final Date fromDate;
  @override
  final String address;
  @override
  final String geoareaId;
  @override
  final AddressTypeIdEnum addressTypeId;

  factory _$Address([void Function(AddressBuilder)? updates]) =>
      (new AddressBuilder()..update(updates))._build();

  _$Address._(
      {required this.fromDate,
      required this.address,
      required this.geoareaId,
      required this.addressTypeId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(fromDate, r'Address', 'fromDate');
    BuiltValueNullFieldError.checkNotNull(address, r'Address', 'address');
    BuiltValueNullFieldError.checkNotNull(geoareaId, r'Address', 'geoareaId');
    BuiltValueNullFieldError.checkNotNull(
        addressTypeId, r'Address', 'addressTypeId');
  }

  @override
  Address rebuild(void Function(AddressBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AddressBuilder toBuilder() => new AddressBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Address &&
        fromDate == other.fromDate &&
        address == other.address &&
        geoareaId == other.geoareaId &&
        addressTypeId == other.addressTypeId;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, fromDate.hashCode), address.hashCode),
            geoareaId.hashCode),
        addressTypeId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Address')
          ..add('fromDate', fromDate)
          ..add('address', address)
          ..add('geoareaId', geoareaId)
          ..add('addressTypeId', addressTypeId))
        .toString();
  }
}

class AddressBuilder implements Builder<Address, AddressBuilder> {
  _$Address? _$v;

  Date? _fromDate;

  Date? get fromDate => _$this._fromDate;

  set fromDate(Date? fromDate) => _$this._fromDate = fromDate;

  String? _address;

  String? get address => _$this._address;

  set address(String? address) => _$this._address = address;

  String? _geoareaId;

  String? get geoareaId => _$this._geoareaId;

  set geoareaId(String? geoareaId) => _$this._geoareaId = geoareaId;

  AddressTypeIdEnum? _addressTypeId;

  AddressTypeIdEnum? get addressTypeId => _$this._addressTypeId;

  set addressTypeId(AddressTypeIdEnum? addressTypeId) =>
      _$this._addressTypeId = addressTypeId;

  AddressBuilder() {
    Address._defaults(this);
  }

  AddressBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _fromDate = $v.fromDate;
      _address = $v.address;
      _geoareaId = $v.geoareaId;
      _addressTypeId = $v.addressTypeId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Address other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Address;
  }

  @override
  void update(void Function(AddressBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Address build() => _build();

  _$Address _build() {
    final _$result = _$v ??
        new _$Address._(
            fromDate: BuiltValueNullFieldError.checkNotNull(
                fromDate, r'Address', 'fromDate'),
            address: BuiltValueNullFieldError.checkNotNull(
                address, r'Address', 'address'),
            geoareaId: BuiltValueNullFieldError.checkNotNull(
                geoareaId, r'Address', 'geoareaId'),
            addressTypeId: BuiltValueNullFieldError.checkNotNull(
                addressTypeId, r'Address', 'addressTypeId'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
