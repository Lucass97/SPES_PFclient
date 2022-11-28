//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:SPES_PFclient/services/model/date.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'report_info.g.dart';

/// ReportInfo - Modello che definisce le informazioni complete del referto medico.
///
/// Properties:
/// * [reportId]
/// * [title]
/// * [uploadDate]
/// * [permission]
/// * [pending]
@BuiltValue()
abstract class ReportInfo implements Built<ReportInfo, ReportInfoBuilder> {
  @BuiltValueField(wireName: r'report_id')
  String get reportId;

  @BuiltValueField(wireName: r'title')
  String get title;

  @BuiltValueField(wireName: r'upload_date')
  Date get uploadDate;

  @BuiltValueField(wireName: r'permission')
  bool? get permission;

  @BuiltValueField(wireName: r'pending')
  bool? get pending;

  ReportInfo._();

  factory ReportInfo([void updates(ReportInfoBuilder b)]) = _$ReportInfo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ReportInfoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ReportInfo> get serializer => _$ReportInfoSerializer();
}

class _$ReportInfoSerializer implements PrimitiveSerializer<ReportInfo> {
  @override
  final Iterable<Type> types = const [ReportInfo, _$ReportInfo];

  @override
  final String wireName = r'ReportInfo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ReportInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'report_id';
    yield serializers.serialize(
      object.reportId,
      specifiedType: const FullType(String),
    );
    yield r'title';
    yield serializers.serialize(
      object.title,
      specifiedType: const FullType(String),
    );
    yield r'upload_date';
    yield serializers.serialize(
      object.uploadDate,
      specifiedType: const FullType(Date),
    );
    if (object.permission != null) {
      yield r'permission';
      yield serializers.serialize(
        object.permission,
        specifiedType: const FullType(bool),
      );
    }
    if (object.pending != null) {
      yield r'pending';
      yield serializers.serialize(
        object.pending,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ReportInfo object, {
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
    required ReportInfoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'report_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.reportId = valueDes;
          break;
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.title = valueDes;
          break;
        case r'upload_date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Date),
          ) as Date;
          result.uploadDate = valueDes;
          break;
        case r'permission':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.permission = valueDes;
          break;
        case r'pending':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.pending = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ReportInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReportInfoBuilder();
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
