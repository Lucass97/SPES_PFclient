//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'marital_status_enum.g.dart';

class MaritalStatusEnum extends EnumClass {
  /// An enumeration.
  @BuiltValueEnumConst(wireName: r'COH')
  static const MaritalStatusEnum COH = _$COH;

  /// An enumeration.
  @BuiltValueEnumConst(wireName: r'DIV')
  static const MaritalStatusEnum DIV = _$DIV;

  /// An enumeration.
  @BuiltValueEnumConst(wireName: r'LSE')
  static const MaritalStatusEnum LSE = _$LSE;

  /// An enumeration.
  @BuiltValueEnumConst(wireName: r'MAR')
  static const MaritalStatusEnum MAR = _$MAR;

  /// An enumeration.
  @BuiltValueEnumConst(wireName: r'SIN')
  static const MaritalStatusEnum SIN = _$SIN;

  /// An enumeration.
  @BuiltValueEnumConst(wireName: r'WID')
  static const MaritalStatusEnum WID = _$WID;

  static Serializer<MaritalStatusEnum> get serializer =>
      _$maritalStatusEnumSerializer;

  const MaritalStatusEnum._(String name) : super(name);

  static BuiltSet<MaritalStatusEnum> get values => _$values;

  static MaritalStatusEnum valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class MaritalStatusEnumMixin = Object with _$MaritalStatusEnumMixin;
