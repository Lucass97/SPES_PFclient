//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'pf_id.g.dart';

/// PfId - Modello che definisce l'id della PF.
///
/// Properties:
/// * [id]
@BuiltValue()
abstract class PfId implements Built<PfId, PfIdBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  PfId._();

  factory PfId([void updates(PfIdBuilder b)]) = _$PfId;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PfIdBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PfId> get serializer => _$PfIdSerializer();
}

class _$PfIdSerializer implements PrimitiveSerializer<PfId> {
  @override
  final Iterable<Type> types = const [PfId, _$PfId];

  @override
  final String wireName = r'PfId';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PfId object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    PfId object, {
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
    required PfIdBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PfId deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PfIdBuilder();
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
