// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_type_id_enum.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AddressTypeIdEnum _$FIX = const AddressTypeIdEnum._('FIX');
const AddressTypeIdEnum _$CUR = const AddressTypeIdEnum._('CUR');
const AddressTypeIdEnum _$VIR = const AddressTypeIdEnum._('VIR');

AddressTypeIdEnum _$valueOf(String name) {
  switch (name) {
    case 'FIX':
      return _$FIX;
    case 'CUR':
      return _$CUR;
    case 'VIR':
      return _$VIR;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<AddressTypeIdEnum> _$values =
    new BuiltSet<AddressTypeIdEnum>(const <AddressTypeIdEnum>[
  _$FIX,
  _$CUR,
  _$VIR,
]);

class _$AddressTypeIdEnumMeta {
  const _$AddressTypeIdEnumMeta();

  AddressTypeIdEnum get FIX => _$FIX;

  AddressTypeIdEnum get CUR => _$CUR;

  AddressTypeIdEnum get VIR => _$VIR;

  AddressTypeIdEnum valueOf(String name) => _$valueOf(name);

  BuiltSet<AddressTypeIdEnum> get values => _$values;
}

abstract class _$AddressTypeIdEnumMixin {
  // ignore: non_constant_identifier_names
  _$AddressTypeIdEnumMeta get AddressTypeIdEnum =>
      const _$AddressTypeIdEnumMeta();
}

Serializer<AddressTypeIdEnum> _$addressTypeIdEnumSerializer =
    new _$AddressTypeIdEnumSerializer();

class _$AddressTypeIdEnumSerializer
    implements PrimitiveSerializer<AddressTypeIdEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'FIX': 'FIX',
    'CUR': 'CUR',
    'VIR': 'VIR',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'FIX': 'FIX',
    'CUR': 'CUR',
    'VIR': 'VIR',
  };

  @override
  final Iterable<Type> types = const <Type>[AddressTypeIdEnum];
  @override
  final String wireName = 'AddressTypeIdEnum';

  @override
  Object serialize(Serializers serializers, AddressTypeIdEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  AddressTypeIdEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      AddressTypeIdEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
