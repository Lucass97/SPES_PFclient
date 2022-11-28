//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:SPES_PFclient/services/model/date.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'permission_partial_info.g.dart';

/// PermissionPartialInfo - Modello che definisce le informazioni parziali di un permesso (in attesa di coferma o già dato) dell' utente specificato per il report indicato.
///
/// Properties:
/// * [userId]
/// * [created]
/// * [permission]
/// * [reportId]
@BuiltValue()
abstract class PermissionPartialInfo
    implements Built<PermissionPartialInfo, PermissionPartialInfoBuilder> {
  @BuiltValueField(wireName: r'user_id')
  String get userId;

  @BuiltValueField(wireName: r'created')
  Date get created;

  @BuiltValueField(wireName: r'permission')
  bool get permission;

  @BuiltValueField(wireName: r'report_id')
  String get reportId;

  PermissionPartialInfo._();

  factory PermissionPartialInfo(
      [void updates(PermissionPartialInfoBuilder b)]) = _$PermissionPartialInfo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PermissionPartialInfoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PermissionPartialInfo> get serializer =>
      _$PermissionPartialInfoSerializer();
}

class _$PermissionPartialInfoSerializer
    implements PrimitiveSerializer<PermissionPartialInfo> {
  @override
  final Iterable<Type> types = const [
    PermissionPartialInfo,
    _$PermissionPartialInfo
  ];

  @override
  final String wireName = r'PermissionPartialInfo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PermissionPartialInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'user_id';
    yield serializers.serialize(
      object.userId,
      specifiedType: const FullType(String),
    );
    yield r'created';
    yield serializers.serialize(
      object.created,
      specifiedType: const FullType(Date),
    );
    yield r'permission';
    yield serializers.serialize(
      object.permission,
      specifiedType: const FullType(bool),
    );
    yield r'report_id';
    yield serializers.serialize(
      object.reportId,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    PermissionPartialInfo object, {
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
    required PermissionPartialInfoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'user_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.userId = valueDes;
          break;
        case r'created':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Date),
          ) as Date;
          result.created = valueDes;
          break;
        case r'permission':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.permission = valueDes;
          break;
        case r'report_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.reportId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PermissionPartialInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PermissionPartialInfoBuilder();
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
