//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:SPES_PFclient/services/model/date.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'citizenship.g.dart';

/// Citizenship - Modello che definisce la cittadinza della PF.
///
/// Properties:
/// * [nationId] - Questo campo adotta lo standard ISO 3166-1 Alpha3
/// * [fromDate] - La data non può essere antecedente al giorno corrente
@BuiltValue()
abstract class Citizenship implements Built<Citizenship, CitizenshipBuilder> {
  /// Questo campo adotta lo standard ISO 3166-1 Alpha3
  @BuiltValueField(wireName: r'nation_id')
  String get nationId;

  /// La data non può essere antecedente al giorno corrente
  @BuiltValueField(wireName: r'from_date')
  Date get fromDate;

  Citizenship._();

  factory Citizenship([void updates(CitizenshipBuilder b)]) = _$Citizenship;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CitizenshipBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Citizenship> get serializer => _$CitizenshipSerializer();
}

class _$CitizenshipSerializer implements PrimitiveSerializer<Citizenship> {
  @override
  final Iterable<Type> types = const [Citizenship, _$Citizenship];

  @override
  final String wireName = r'Citizenship';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Citizenship object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'nation_id';
    yield serializers.serialize(
      object.nationId,
      specifiedType: const FullType(String),
    );
    yield r'from_date';
    yield serializers.serialize(
      object.fromDate,
      specifiedType: const FullType(Date),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    Citizenship object, {
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
    required CitizenshipBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'nation_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.nationId = valueDes;
          break;
        case r'from_date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Date),
          ) as Date;
          result.fromDate = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Citizenship deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CitizenshipBuilder();
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
