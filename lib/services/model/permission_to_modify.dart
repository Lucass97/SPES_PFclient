//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'permission_to_modify.g.dart';

/// PermissionPartialInfo - Modello che identifica un determinato permesso per il quale si vuole modificare lo stato.
///
/// Properties:
/// * [userId]
/// * [reportId]
/// * [permission] - Questo è valore che verrò sostituito con quello già presente nel repository
@BuiltValue()
abstract class PermissionToModify
    implements Built<PermissionToModify, PermissionToModifyBuilder> {
  @BuiltValueField(wireName: r'user_id')
  String get userId;

  @BuiltValueField(wireName: r'report_id')
  String get reportId;

  /// Questo è valore che verrò sostituito con quello già presente nel repository
  @BuiltValueField(wireName: r'permission')
  bool get permission;

  PermissionToModify._();

  factory PermissionToModify([void updates(PermissionToModifyBuilder b)]) =
      _$PermissionToModify;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PermissionToModifyBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PermissionToModify> get serializer =>
      _$PermissionToModifySerializer();
}

class _$PermissionToModifySerializer
    implements PrimitiveSerializer<PermissionToModify> {
  @override
  final Iterable<Type> types = const [PermissionToModify, _$PermissionToModify];

  @override
  final String wireName = r'PermissionToModify';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PermissionToModify object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'user_id';
    yield serializers.serialize(
      object.userId,
      specifiedType: const FullType(String),
    );
    yield r'report_id';
    yield serializers.serialize(
      object.reportId,
      specifiedType: const FullType(String),
    );
    yield r'permission';
    yield serializers.serialize(
      object.permission,
      specifiedType: const FullType(bool),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    PermissionToModify object, {
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
    required PermissionToModifyBuilder result,
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
        case r'report_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.reportId = valueDes;
          break;
        case r'permission':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.permission = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PermissionToModify deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PermissionToModifyBuilder();
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
