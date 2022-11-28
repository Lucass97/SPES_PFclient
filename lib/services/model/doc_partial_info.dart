//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:SPES_PFclient/services/model/date.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'doc_partial_info.g.dart';

/// DocInfo - Modello che definisce le informazioni parziali di un documento amministrativo.
///
/// Properties:
/// * [id]
/// * [tipologia]
/// * [uploadDate]
@BuiltValue()
abstract class DocPartialInfo
    implements Built<DocPartialInfo, DocPartialInfoBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'tipologia')
  String get tipologia;

  @BuiltValueField(wireName: r'upload_date')
  Date get uploadDate;

  DocPartialInfo._();

  factory DocPartialInfo([void updates(DocPartialInfoBuilder b)]) =
      _$DocPartialInfo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DocPartialInfoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DocPartialInfo> get serializer =>
      _$DocPartialInfoSerializer();
}

class _$DocPartialInfoSerializer
    implements PrimitiveSerializer<DocPartialInfo> {
  @override
  final Iterable<Type> types = const [DocPartialInfo, _$DocPartialInfo];

  @override
  final String wireName = r'DocPartialInfo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DocPartialInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'tipologia';
    yield serializers.serialize(
      object.tipologia,
      specifiedType: const FullType(String),
    );
    yield r'upload_date';
    yield serializers.serialize(
      object.uploadDate,
      specifiedType: const FullType(Date),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    DocPartialInfo object, {
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
    required DocPartialInfoBuilder result,
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
        case r'tipologia':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.tipologia = valueDes;
          break;
        case r'upload_date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Date),
          ) as Date;
          result.uploadDate = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DocPartialInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DocPartialInfoBuilder();
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
