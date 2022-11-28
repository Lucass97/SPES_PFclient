//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'address_type_id_enum.g.dart';

class AddressTypeIdEnum extends EnumClass {
  /// An enumeration.
  @BuiltValueEnumConst(wireName: r'FIX')
  static const AddressTypeIdEnum FIX = _$FIX;

  /// An enumeration.
  @BuiltValueEnumConst(wireName: r'CUR')
  static const AddressTypeIdEnum CUR = _$CUR;

  /// An enumeration.
  @BuiltValueEnumConst(wireName: r'VIR')
  static const AddressTypeIdEnum VIR = _$VIR;

  static Serializer<AddressTypeIdEnum> get serializer =>
      _$addressTypeIdEnumSerializer;

  const AddressTypeIdEnum._(String name) : super(name);

  static BuiltSet<AddressTypeIdEnum> get values => _$values;

  static AddressTypeIdEnum valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class AddressTypeIdEnumMixin = Object with _$AddressTypeIdEnumMixin;
