//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:SPES_PFclient/services/model/date.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'doc_info.g.dart';

/// DocInfo - Modello che definisce le informazioni complete di un documento amministrativo.
///
/// Properties:
/// * [id]
/// * [tipologia]
/// * [uploadDate]
/// * [entity]
/// * [number]
/// * [placeOfIssue]
/// * [expirationDate] - La data non può essere antecedente al giorno corrente, inoltre non può essere antecedente a release_date
/// * [releaseDate] - La data non può essere antecedente al giorno corrente, inoltre non può essere precedente a release_date
@BuiltValue()
abstract class DocInfo implements Built<DocInfo, DocInfoBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'tipologia')
  String get tipologia;

  @BuiltValueField(wireName: r'upload_date')
  Date get uploadDate;

  @BuiltValueField(wireName: r'entity')
  String get entity;

  @BuiltValueField(wireName: r'number')
  String get number;

  @BuiltValueField(wireName: r'place_of_issue')
  String get placeOfIssue;

  /// La data non può essere antecedente al giorno corrente, inoltre non può essere antecedente a release_date
  @BuiltValueField(wireName: r'expiration_date')
  Date get expirationDate;

  /// La data non può essere antecedente al giorno corrente, inoltre non può essere precedente a release_date
  @BuiltValueField(wireName: r'release_date')
  Date get releaseDate;

  DocInfo._();

  factory DocInfo([void updates(DocInfoBuilder b)]) = _$DocInfo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DocInfoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DocInfo> get serializer => _$DocInfoSerializer();
}

class _$DocInfoSerializer implements PrimitiveSerializer<DocInfo> {
  @override
  final Iterable<Type> types = const [DocInfo, _$DocInfo];

  @override
  final String wireName = r'DocInfo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DocInfo object, {
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
    yield r'entity';
    yield serializers.serialize(
      object.entity,
      specifiedType: const FullType(String),
    );
    yield r'number';
    yield serializers.serialize(
      object.number,
      specifiedType: const FullType(String),
    );
    yield r'place_of_issue';
    yield serializers.serialize(
      object.placeOfIssue,
      specifiedType: const FullType(String),
    );
    yield r'expiration_date';
    yield serializers.serialize(
      object.expirationDate,
      specifiedType: const FullType(Date),
    );
    yield r'release_date';
    yield serializers.serialize(
      object.releaseDate,
      specifiedType: const FullType(Date),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    DocInfo object, {
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
    required DocInfoBuilder result,
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
        case r'entity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.entity = valueDes;
          break;
        case r'number':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.number = valueDes;
          break;
        case r'place_of_issue':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.placeOfIssue = valueDes;
          break;
        case r'expiration_date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Date),
          ) as Date;
          result.expirationDate = valueDes;
          break;
        case r'release_date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Date),
          ) as Date;
          result.releaseDate = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DocInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DocInfoBuilder();
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
