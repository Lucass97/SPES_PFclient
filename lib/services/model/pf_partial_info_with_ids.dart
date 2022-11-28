//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:SPES_PFclient/services/model/gender_enum.dart';
import 'package:SPES_PFclient/services/model/date.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'pf_partial_info_with_ids.g.dart';

/// PFPartialInfoWithIds - Modello che definisce informazioni parziali della PF.
///
/// Properties:
/// * [pfId]
/// * [firstname]
/// * [lastname]
/// * [cf]
/// * [cuiCode]
/// * [gender]
/// * [birthDate] - La data non può essere antecedente al giorno corrente
/// * [nicknames]
/// * [isForeign]
/// * [isAnonymous]
/// * [isDead]
/// * [verified]
@BuiltValue()
abstract class PFPartialInfoWithIds
    implements Built<PFPartialInfoWithIds, PFPartialInfoWithIdsBuilder> {
  @BuiltValueField(wireName: r'pf_id')
  String get pfId;

  @BuiltValueField(wireName: r'firstname')
  String? get firstname;

  @BuiltValueField(wireName: r'lastname')
  String? get lastname;

  @BuiltValueField(wireName: r'cf')
  String? get cf;

  @BuiltValueField(wireName: r'cui_code')
  String? get cuiCode;

  @BuiltValueField(wireName: r'gender')
  GenderEnum? get gender;

  // enum genderEnum {  M,  F,  };

  /// La data non può essere antecedente al giorno corrente
  @BuiltValueField(wireName: r'birth_date')
  Date? get birthDate;

  @BuiltValueField(wireName: r'nicknames')
  String? get nicknames;

  @BuiltValueField(wireName: r'is_foreign')
  bool? get isForeign;

  @BuiltValueField(wireName: r'is_anonymous')
  bool? get isAnonymous;

  @BuiltValueField(wireName: r'is_dead')
  bool? get isDead;

  @BuiltValueField(wireName: r'verified')
  bool? get verified;

  PFPartialInfoWithIds._();

  factory PFPartialInfoWithIds([void updates(PFPartialInfoWithIdsBuilder b)]) =
      _$PFPartialInfoWithIds;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PFPartialInfoWithIdsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PFPartialInfoWithIds> get serializer =>
      _$PFPartialInfoWithIdsSerializer();
}

class _$PFPartialInfoWithIdsSerializer
    implements PrimitiveSerializer<PFPartialInfoWithIds> {
  @override
  final Iterable<Type> types = const [
    PFPartialInfoWithIds,
    _$PFPartialInfoWithIds
  ];

  @override
  final String wireName = r'PFPartialInfoWithIds';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PFPartialInfoWithIds object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'pf_id';
    yield serializers.serialize(
      object.pfId,
      specifiedType: const FullType(String),
    );
    if (object.firstname != null) {
      yield r'firstname';
      yield serializers.serialize(
        object.firstname,
        specifiedType: const FullType(String),
      );
    }
    if (object.lastname != null) {
      yield r'lastname';
      yield serializers.serialize(
        object.lastname,
        specifiedType: const FullType(String),
      );
    }
    if (object.cf != null) {
      yield r'cf';
      yield serializers.serialize(
        object.cf,
        specifiedType: const FullType(String),
      );
    }
    if (object.cuiCode != null) {
      yield r'cui_code';
      yield serializers.serialize(
        object.cuiCode,
        specifiedType: const FullType(String),
      );
    }
    if (object.gender != null) {
      yield r'gender';
      yield serializers.serialize(
        object.gender,
        specifiedType: const FullType(GenderEnum),
      );
    }
    if (object.birthDate != null) {
      yield r'birth_date';
      yield serializers.serialize(
        object.birthDate,
        specifiedType: const FullType(Date),
      );
    }
    if (object.nicknames != null) {
      yield r'nicknames';
      yield serializers.serialize(
        object.nicknames,
        specifiedType: const FullType(String),
      );
    }
    if (object.isForeign != null) {
      yield r'is_foreign';
      yield serializers.serialize(
        object.isForeign,
        specifiedType: const FullType(bool),
      );
    }
    if (object.isAnonymous != null) {
      yield r'is_anonymous';
      yield serializers.serialize(
        object.isAnonymous,
        specifiedType: const FullType(bool),
      );
    }
    if (object.isDead != null) {
      yield r'is_dead';
      yield serializers.serialize(
        object.isDead,
        specifiedType: const FullType(bool),
      );
    }
    if (object.verified != null) {
      yield r'verified';
      yield serializers.serialize(
        object.verified,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PFPartialInfoWithIds object, {
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
    required PFPartialInfoWithIdsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'pf_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.pfId = valueDes;
          break;
        case r'firstname':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.firstname = valueDes;
          break;
        case r'lastname':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.lastname = valueDes;
          break;
        case r'cf':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.cf = valueDes;
          break;
        case r'cui_code':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.cuiCode = valueDes;
          break;
        case r'gender':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(GenderEnum),
          ) as GenderEnum;
          result.gender = valueDes;
          break;
        case r'birth_date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Date),
          ) as Date;
          result.birthDate = valueDes;
          break;
        case r'nicknames':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.nicknames = valueDes;
          break;
        case r'is_foreign':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isForeign = valueDes;
          break;
        case r'is_anonymous':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isAnonymous = valueDes;
          break;
        case r'is_dead':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isDead = valueDes;
          break;
        case r'verified':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.verified = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PFPartialInfoWithIds deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PFPartialInfoWithIdsBuilder();
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
