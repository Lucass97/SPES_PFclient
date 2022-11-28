// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'marital_status_enum.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const MaritalStatusEnum _$COH = const MaritalStatusEnum._('COH');
const MaritalStatusEnum _$DIV = const MaritalStatusEnum._('DIV');
const MaritalStatusEnum _$LSE = const MaritalStatusEnum._('LSE');
const MaritalStatusEnum _$MAR = const MaritalStatusEnum._('MAR');
const MaritalStatusEnum _$SIN = const MaritalStatusEnum._('SIN');
const MaritalStatusEnum _$WID = const MaritalStatusEnum._('WID');

MaritalStatusEnum _$valueOf(String name) {
  switch (name) {
    case 'COH':
      return _$COH;
    case 'DIV':
      return _$DIV;
    case 'LSE':
      return _$LSE;
    case 'MAR':
      return _$MAR;
    case 'SIN':
      return _$SIN;
    case 'WID':
      return _$WID;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<MaritalStatusEnum> _$values =
    new BuiltSet<MaritalStatusEnum>(const <MaritalStatusEnum>[
  _$COH,
  _$DIV,
  _$LSE,
  _$MAR,
  _$SIN,
  _$WID,
]);

class _$MaritalStatusEnumMeta {
  const _$MaritalStatusEnumMeta();

  MaritalStatusEnum get COH => _$COH;

  MaritalStatusEnum get DIV => _$DIV;

  MaritalStatusEnum get LSE => _$LSE;

  MaritalStatusEnum get MAR => _$MAR;

  MaritalStatusEnum get SIN => _$SIN;

  MaritalStatusEnum get WID => _$WID;

  MaritalStatusEnum valueOf(String name) => _$valueOf(name);

  BuiltSet<MaritalStatusEnum> get values => _$values;
}

abstract class _$MaritalStatusEnumMixin {
  // ignore: non_constant_identifier_names
  _$MaritalStatusEnumMeta get MaritalStatusEnum =>
      const _$MaritalStatusEnumMeta();
}

Serializer<MaritalStatusEnum> _$maritalStatusEnumSerializer =
    new _$MaritalStatusEnumSerializer();

class _$MaritalStatusEnumSerializer
    implements PrimitiveSerializer<MaritalStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'COH': 'COH',
    'DIV': 'DIV',
    'LSE': 'LSE',
    'MAR': 'MAR',
    'SIN': 'SIN',
    'WID': 'WID',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'COH': 'COH',
    'DIV': 'DIV',
    'LSE': 'LSE',
    'MAR': 'MAR',
    'SIN': 'SIN',
    'WID': 'WID',
  };

  @override
  final Iterable<Type> types = const <Type>[MaritalStatusEnum];
  @override
  final String wireName = 'MaritalStatusEnum';

  @override
  Object serialize(Serializers serializers, MaritalStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  MaritalStatusEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      MaritalStatusEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
