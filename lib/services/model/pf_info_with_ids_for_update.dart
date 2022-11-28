//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:SPES_PFclient/services/model/address.dart';
import 'package:built_collection/built_collection.dart';
import 'package:SPES_PFclient/services/model/marital_status.dart';
import 'package:SPES_PFclient/services/model/gender_enum.dart';
import 'package:SPES_PFclient/services/model/citizenship.dart';
import 'package:SPES_PFclient/services/model/date.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'pf_info_with_ids_for_update.g.dart';

/// PfInfoWithIdsForUpdate - Modello che definisce le informazioni necessarie per un aggiornamento della PF.
///
/// Properties:
/// * [pfId]
/// * [cf]
/// * [firstname]
/// * [lastname]
/// * [fullname]
/// * [gender]
/// * [nicknames]
/// * [birthDate] - La data non può essere antecedente al giorno corrente
/// * [birthNationId] - Questo campo adotta lo standard ISO 3166-1 Alpha3
/// * [birthGeoareaId]
/// * [birthCity]
/// * [cuiCode]
/// * [sanitaryDistrictId]
/// * [isForeign]
/// * [isAnonymous]
/// * [verified]
/// * [isDead]
/// * [deathDate] - La data non può essere antecedente al giorno corrente
/// * [maritalStatusListToAdd] - Lista (opzionale) dello storico degli stati civili da aggiungere
/// * [addressListToAdd] - Lista (opzionale) dello storico degli indirizzi da aggiungere
/// * [citizenshipListToAdd] - Lista (opzionale) dello storico delle cittadinanze da aggiungere
/// * [maritalStatusListToDelete] - Lista (opzionale) dello storico degli stati civili da rimuovere. Sono specificati solamente gli id
/// * [addressListToDelete] - Lista (opzionale) dello storico degli indirizzi da rimuovere. Sono specificati solamente gli id
/// * [citizenshipListToDelete] - Lista (opzionale) dello storico delle cittadinanze da rimuovere. Sono specificati solamente gli id
/// * [maritalStatusListToUpdate] - Dizionario (opzionale) dello storico degli stati civili da aggiornare
/// * [addressListToUpdate] - Dizionario (opzionale) dello storico degli indirizzi da aggiornare
/// * [citizenshipListToUpdate] - Dizionario (opzionale) dello storico delle cittadinanze da aggiornare
@BuiltValue()
abstract class PfInfoWithIdsForUpdate
    implements Built<PfInfoWithIdsForUpdate, PfInfoWithIdsForUpdateBuilder> {
  @BuiltValueField(wireName: r'pf_id')
  String get pfId;

  @BuiltValueField(wireName: r'cf')
  String? get cf;

  @BuiltValueField(wireName: r'firstname')
  String? get firstname;

  @BuiltValueField(wireName: r'lastname')
  String? get lastname;

  @BuiltValueField(wireName: r'fullname')
  String? get fullname;

  @BuiltValueField(wireName: r'gender')
  GenderEnum? get gender;

  // enum genderEnum {  M,  F,  };

  @BuiltValueField(wireName: r'nicknames')
  String? get nicknames;

  /// La data non può essere antecedente al giorno corrente
  @BuiltValueField(wireName: r'birth_date')
  Date? get birthDate;

  /// Questo campo adotta lo standard ISO 3166-1 Alpha3
  @BuiltValueField(wireName: r'birth_nation_id')
  String? get birthNationId;

  @BuiltValueField(wireName: r'birth_geoarea_id')
  String? get birthGeoareaId;

  @BuiltValueField(wireName: r'birth_city')
  String? get birthCity;

  @BuiltValueField(wireName: r'cui_code')
  String? get cuiCode;

  @BuiltValueField(wireName: r'sanitary_district_id')
  String? get sanitaryDistrictId;

  @BuiltValueField(wireName: r'is_foreign')
  bool? get isForeign;

  @BuiltValueField(wireName: r'is_anonymous')
  bool? get isAnonymous;

  @BuiltValueField(wireName: r'verified')
  bool? get verified;

  @BuiltValueField(wireName: r'is_dead')
  bool? get isDead;

  /// La data non può essere antecedente al giorno corrente
  @BuiltValueField(wireName: r'death_date')
  Date? get deathDate;

  /// Lista (opzionale) dello storico degli stati civili da aggiungere
  @BuiltValueField(wireName: r'marital_status_list_to_add')
  BuiltList<MaritalStatus>? get maritalStatusListToAdd;

  /// Lista (opzionale) dello storico degli indirizzi da aggiungere
  @BuiltValueField(wireName: r'address_list_to_add')
  BuiltList<Address>? get addressListToAdd;

  /// Lista (opzionale) dello storico delle cittadinanze da aggiungere
  @BuiltValueField(wireName: r'citizenship_list_to_add')
  BuiltList<Citizenship>? get citizenshipListToAdd;

  /// Lista (opzionale) dello storico degli stati civili da rimuovere. Sono specificati solamente gli id
  @BuiltValueField(wireName: r'marital_status_list_to_delete')
  BuiltList<String>? get maritalStatusListToDelete;

  /// Lista (opzionale) dello storico degli indirizzi da rimuovere. Sono specificati solamente gli id
  @BuiltValueField(wireName: r'address_list_to_delete')
  BuiltList<String>? get addressListToDelete;

  /// Lista (opzionale) dello storico delle cittadinanze da rimuovere. Sono specificati solamente gli id
  @BuiltValueField(wireName: r'citizenship_list_to_delete')
  BuiltList<String>? get citizenshipListToDelete;

  /// Dizionario (opzionale) dello storico degli stati civili da aggiornare
  @BuiltValueField(wireName: r'marital_status_list_to_update')
  BuiltMap<String, MaritalStatus>? get maritalStatusListToUpdate;

  /// Dizionario (opzionale) dello storico degli indirizzi da aggiornare
  @BuiltValueField(wireName: r'address_list_to_update')
  BuiltMap<String, Address>? get addressListToUpdate;

  /// Dizionario (opzionale) dello storico delle cittadinanze da aggiornare
  @BuiltValueField(wireName: r'citizenship_list_to_update')
  BuiltMap<String, Citizenship>? get citizenshipListToUpdate;

  PfInfoWithIdsForUpdate._();

  factory PfInfoWithIdsForUpdate(
          [void updates(PfInfoWithIdsForUpdateBuilder b)]) =
      _$PfInfoWithIdsForUpdate;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PfInfoWithIdsForUpdateBuilder b) =>
      b..birthNationId = 'ITA';

  @BuiltValueSerializer(custom: true)
  static Serializer<PfInfoWithIdsForUpdate> get serializer =>
      _$PfInfoWithIdsForUpdateSerializer();
}

class _$PfInfoWithIdsForUpdateSerializer
    implements PrimitiveSerializer<PfInfoWithIdsForUpdate> {
  @override
  final Iterable<Type> types = const [
    PfInfoWithIdsForUpdate,
    _$PfInfoWithIdsForUpdate
  ];

  @override
  final String wireName = r'PfInfoWithIdsForUpdate';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PfInfoWithIdsForUpdate object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'pf_id';
    yield serializers.serialize(
      object.pfId,
      specifiedType: const FullType(String),
    );
    if (object.cf != null) {
      yield r'cf';
      yield serializers.serialize(
        object.cf,
        specifiedType: const FullType(String),
      );
    }
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
    if (object.fullname != null) {
      yield r'fullname';
      yield serializers.serialize(
        object.fullname,
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
    if (object.nicknames != null) {
      yield r'nicknames';
      yield serializers.serialize(
        object.nicknames,
        specifiedType: const FullType(String),
      );
    }
    if (object.birthDate != null) {
      yield r'birth_date';
      yield serializers.serialize(
        object.birthDate,
        specifiedType: const FullType(Date),
      );
    }
    if (object.birthNationId != null) {
      yield r'birth_nation_id';
      yield serializers.serialize(
        object.birthNationId,
        specifiedType: const FullType(String),
      );
    }
    if (object.birthGeoareaId != null) {
      yield r'birth_geoarea_id';
      yield serializers.serialize(
        object.birthGeoareaId,
        specifiedType: const FullType(String),
      );
    }
    if (object.birthCity != null) {
      yield r'birth_city';
      yield serializers.serialize(
        object.birthCity,
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
    if (object.sanitaryDistrictId != null) {
      yield r'sanitary_district_id';
      yield serializers.serialize(
        object.sanitaryDistrictId,
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
    if (object.verified != null) {
      yield r'verified';
      yield serializers.serialize(
        object.verified,
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
    if (object.deathDate != null) {
      yield r'death_date';
      yield serializers.serialize(
        object.deathDate,
        specifiedType: const FullType(Date),
      );
    }
    if (object.maritalStatusListToAdd != null) {
      yield r'marital_status_list_to_add';
      yield serializers.serialize(
        object.maritalStatusListToAdd,
        specifiedType: const FullType(BuiltList, [FullType(MaritalStatus)]),
      );
    }
    if (object.addressListToAdd != null) {
      yield r'address_list_to_add';
      yield serializers.serialize(
        object.addressListToAdd,
        specifiedType: const FullType(BuiltList, [FullType(Address)]),
      );
    }
    if (object.citizenshipListToAdd != null) {
      yield r'citizenship_list_to_add';
      yield serializers.serialize(
        object.citizenshipListToAdd,
        specifiedType: const FullType(BuiltList, [FullType(Citizenship)]),
      );
    }
    if (object.maritalStatusListToDelete != null) {
      yield r'marital_status_list_to_delete';
      yield serializers.serialize(
        object.maritalStatusListToDelete,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.addressListToDelete != null) {
      yield r'address_list_to_delete';
      yield serializers.serialize(
        object.addressListToDelete,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.citizenshipListToDelete != null) {
      yield r'citizenship_list_to_delete';
      yield serializers.serialize(
        object.citizenshipListToDelete,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.maritalStatusListToUpdate != null) {
      yield r'marital_status_list_to_update';
      yield serializers.serialize(
        object.maritalStatusListToUpdate,
        specifiedType: const FullType(
            BuiltMap, [FullType(String), FullType(MaritalStatus)]),
      );
    }
    if (object.addressListToUpdate != null) {
      yield r'address_list_to_update';
      yield serializers.serialize(
        object.addressListToUpdate,
        specifiedType:
            const FullType(BuiltMap, [FullType(String), FullType(Address)]),
      );
    }
    if (object.citizenshipListToUpdate != null) {
      yield r'citizenship_list_to_update';
      yield serializers.serialize(
        object.citizenshipListToUpdate,
        specifiedType:
            const FullType(BuiltMap, [FullType(String), FullType(Citizenship)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PfInfoWithIdsForUpdate object, {
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
    required PfInfoWithIdsForUpdateBuilder result,
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
        case r'cf':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.cf = valueDes;
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
        case r'fullname':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.fullname = valueDes;
          break;
        case r'gender':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(GenderEnum),
          ) as GenderEnum;
          result.gender = valueDes;
          break;
        case r'nicknames':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.nicknames = valueDes;
          break;
        case r'birth_date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Date),
          ) as Date;
          result.birthDate = valueDes;
          break;
        case r'birth_nation_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.birthNationId = valueDes;
          break;
        case r'birth_geoarea_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.birthGeoareaId = valueDes;
          break;
        case r'birth_city':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.birthCity = valueDes;
          break;
        case r'cui_code':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.cuiCode = valueDes;
          break;
        case r'sanitary_district_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.sanitaryDistrictId = valueDes;
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
        case r'verified':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.verified = valueDes;
          break;
        case r'is_dead':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isDead = valueDes;
          break;
        case r'death_date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Date),
          ) as Date;
          result.deathDate = valueDes;
          break;
        case r'marital_status_list_to_add':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(MaritalStatus)]),
          ) as BuiltList<MaritalStatus>;
          result.maritalStatusListToAdd.replace(valueDes);
          break;
        case r'address_list_to_add':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(Address)]),
          ) as BuiltList<Address>;
          result.addressListToAdd.replace(valueDes);
          break;
        case r'citizenship_list_to_add':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(Citizenship)]),
          ) as BuiltList<Citizenship>;
          result.citizenshipListToAdd.replace(valueDes);
          break;
        case r'marital_status_list_to_delete':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.maritalStatusListToDelete.replace(valueDes);
          break;
        case r'address_list_to_delete':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.addressListToDelete.replace(valueDes);
          break;
        case r'citizenship_list_to_delete':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.citizenshipListToDelete.replace(valueDes);
          break;
        case r'marital_status_list_to_update':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
                BuiltMap, [FullType(String), FullType(MaritalStatus)]),
          ) as BuiltMap<String, MaritalStatus>;
          result.maritalStatusListToUpdate.replace(valueDes);
          break;
        case r'address_list_to_update':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltMap, [FullType(String), FullType(Address)]),
          ) as BuiltMap<String, Address>;
          result.addressListToUpdate.replace(valueDes);
          break;
        case r'citizenship_list_to_update':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
                BuiltMap, [FullType(String), FullType(Citizenship)]),
          ) as BuiltMap<String, Citizenship>;
          result.citizenshipListToUpdate.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PfInfoWithIdsForUpdate deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PfInfoWithIdsForUpdateBuilder();
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
