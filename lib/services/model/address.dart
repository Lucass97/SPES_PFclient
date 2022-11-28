//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:SPES_PFclient/services/model/address_type_id_enum.dart';
import 'package:SPES_PFclient/services/model/date.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'address.g.dart';

/// Address - Modello che definisce l'indirizzo della PF.
///
/// Properties:
/// * [fromDate] - La data non può essere antecedente al giorno corrente
/// * [address]
/// * [geoareaId]
/// * [addressTypeId]
@BuiltValue()
abstract class Address implements Built<Address, AddressBuilder> {
  /// La data non può essere antecedente al giorno corrente
  @BuiltValueField(wireName: r'from_date')
  Date get fromDate;

  @BuiltValueField(wireName: r'address')
  String get address;

  @BuiltValueField(wireName: r'geoarea_id')
  String get geoareaId;

  @BuiltValueField(wireName: r'address_type_id')
  AddressTypeIdEnum get addressTypeId;

  // enum addressTypeIdEnum {  FIX,  CUR,  VIR,  };

  Address._();

  factory Address([void updates(AddressBuilder b)]) = _$Address;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AddressBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Address> get serializer => _$AddressSerializer();
}

class _$AddressSerializer implements PrimitiveSerializer<Address> {
  @override
  final Iterable<Type> types = const [Address, _$Address];

  @override
  final String wireName = r'Address';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Address object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'from_date';
    yield serializers.serialize(
      object.fromDate,
      specifiedType: const FullType(Date),
    );
    yield r'address';
    yield serializers.serialize(
      object.address,
      specifiedType: const FullType(String),
    );
    yield r'geoarea_id';
    yield serializers.serialize(
      object.geoareaId,
      specifiedType: const FullType(String),
    );
    yield r'address_type_id';
    yield serializers.serialize(
      object.addressTypeId,
      specifiedType: const FullType(AddressTypeIdEnum),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    Address object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object,
            specifiedType: specifiedType)
        .toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AddressBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'from_date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Date),
          ) as Date;
          result.fromDate = valueDes;
          break;
        case r'address':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.address = valueDes;
          break;
        case r'geoarea_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.geoareaId = valueDes;
          break;
        case r'address_type_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AddressTypeIdEnum),
          ) as AddressTypeIdEnum;
          result.addressTypeId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Address deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AddressBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}
