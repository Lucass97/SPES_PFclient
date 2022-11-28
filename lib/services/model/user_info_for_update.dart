//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_info_for_update.g.dart';

/// UserInfoForUpdate - Modello che definisce la vecchia password dell'utente e quella nuova che si desidera.
///
/// Properties:
/// * [oldPwd] - La password antecedente.
/// * [newPwd] - Il valore assegnato deve essere diverso da old_pwd.
@BuiltValue()
abstract class UserInfoForUpdate
    implements Built<UserInfoForUpdate, UserInfoForUpdateBuilder> {
  /// La password antecedente.
  @BuiltValueField(wireName: r'old_pwd')
  String get oldPwd;

  /// Il valore assegnato deve essere diverso da old_pwd.
  @BuiltValueField(wireName: r'new_pwd')
  String get newPwd;

  UserInfoForUpdate._();

  factory UserInfoForUpdate([void updates(UserInfoForUpdateBuilder b)]) =
      _$UserInfoForUpdate;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UserInfoForUpdateBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UserInfoForUpdate> get serializer =>
      _$UserInfoForUpdateSerializer();
}

class _$UserInfoForUpdateSerializer
    implements PrimitiveSerializer<UserInfoForUpdate> {
  @override
  final Iterable<Type> types = const [UserInfoForUpdate, _$UserInfoForUpdate];

  @override
  final String wireName = r'UserInfoForUpdate';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UserInfoForUpdate object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'old_pwd';
    yield serializers.serialize(
      object.oldPwd,
      specifiedType: const FullType(String),
    );
    yield r'new_pwd';
    yield serializers.serialize(
      object.newPwd,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    UserInfoForUpdate object, {
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
    required UserInfoForUpdateBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'old_pwd':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.oldPwd = valueDes;
          break;
        case r'new_pwd':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.newPwd = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UserInfoForUpdate deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UserInfoForUpdateBuilder();
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
