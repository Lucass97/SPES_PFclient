//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:SPES_PFclient/services/model/marital_status_enum.dart';
import 'package:SPES_PFclient/services/model/date.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'marital_status.g.dart';

/// MaritalStatus - Modello che definisce lo stato civile della PF.
///
/// Properties:
/// * [maritalStatusCode]
/// * [fromDate] - La data non può essere antecedente al giorno corrente
@BuiltValue()
abstract class MaritalStatus
    implements Built<MaritalStatus, MaritalStatusBuilder> {
  @BuiltValueField(wireName: r'marital_status_code')
  MaritalStatusEnum get maritalStatusCode;

  // enum maritalStatusCodeEnum {  COH,  DIV,  LSE,  MAR,  SIN,  WID,  };

  /// La data non può essere antecedente al giorno corrente
  @BuiltValueField(wireName: r'from_date')
  Date get fromDate;

  MaritalStatus._();

  factory MaritalStatus([void updates(MaritalStatusBuilder b)]) =
      _$MaritalStatus;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MaritalStatusBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MaritalStatus> get serializer =>
      _$MaritalStatusSerializer();
}

class _$MaritalStatusSerializer implements PrimitiveSerializer<MaritalStatus> {
  @override
  final Iterable<Type> types = const [MaritalStatus, _$MaritalStatus];

  @override
  final String wireName = r'MaritalStatus';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MaritalStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'marital_status_code';
    yield serializers.serialize(
      object.maritalStatusCode,
      specifiedType: const FullType(MaritalStatusEnum),
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
    MaritalStatus object, {
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
    required MaritalStatusBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'marital_status_code':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(MaritalStatusEnum),
          ) as MaritalStatusEnum;
          result.maritalStatusCode = valueDes;
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
  MaritalStatus deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MaritalStatusBuilder();
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
