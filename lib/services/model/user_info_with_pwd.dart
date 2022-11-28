//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_info_with_pwd.g.dart';

/// UserInfoWithPwd - Modello che definisce lo username.
///
/// Properties:
/// * [username]
@BuiltValue()
abstract class UserInfoWithPwd
    implements Built<UserInfoWithPwd, UserInfoWithPwdBuilder> {
  @BuiltValueField(wireName: r'username')
  String get username;

  UserInfoWithPwd._();

  factory UserInfoWithPwd([void updates(UserInfoWithPwdBuilder b)]) =
      _$UserInfoWithPwd;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UserInfoWithPwdBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UserInfoWithPwd> get serializer =>
      _$UserInfoWithPwdSerializer();
}

class _$UserInfoWithPwdSerializer
    implements PrimitiveSerializer<UserInfoWithPwd> {
  @override
  final Iterable<Type> types = const [UserInfoWithPwd, _$UserInfoWithPwd];

  @override
  final String wireName = r'UserInfoWithPwd';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UserInfoWithPwd object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'username';
    yield serializers.serialize(
      object.username,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    UserInfoWithPwd object, {
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
    required UserInfoWithPwdBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'username':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.username = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UserInfoWithPwd deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UserInfoWithPwdBuilder();
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
