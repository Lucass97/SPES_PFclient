# openapi.model.PfInfoWithIdsForUpdate

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**pfId** | **String** |  | 
**cf** | **String** |  | [optional] 
**firstname** | **String** |  | [optional] 
**lastname** | **String** |  | [optional] 
**fullname** | **String** |  | [optional] 
**gender** | [**GenderEnum**](GenderEnum.md) |  | [optional] 
**nicknames** | **String** |  | [optional] 
**birthDate** | [**Date**](Date.md) | La data non può essere antecedente al giorno corrente | [optional] 
**birthNationId** | **String** | Questo campo adotta lo standard ISO 3166-1 Alpha3 | [optional] [default to 'ITA']
**birthGeoareaId** | **String** |  | [optional] 
**birthCity** | **String** |  | [optional] 
**cuiCode** | **String** |  | [optional] 
**sanitaryDistrictId** | **String** |  | [optional] 
**isForeign** | **bool** |  | [optional] 
**isAnonymous** | **bool** |  | [optional] 
**verified** | **bool** |  | [optional] 
**isDead** | **bool** |  | [optional] 
**deathDate** | [**Date**](Date.md) | La data non può essere antecedente al giorno corrente | [optional] 
**maritalStatusListToAdd** | [**BuiltList&lt;MaritalStatus&gt;**](MaritalStatus.md) | Lista (opzionale) dello storico degli stati civili da aggiungere | [optional] 
**addressListToAdd** | [**BuiltList&lt;Address&gt;**](Address.md) | Lista (opzionale) dello storico degli indirizzi da aggiungere | [optional] 
**citizenshipListToAdd** | [**BuiltList&lt;Citizenship&gt;**](Citizenship.md) | Lista (opzionale) dello storico delle cittadinanze da aggiungere | [optional] 
**maritalStatusListToDelete** | **BuiltList&lt;String&gt;** | Lista (opzionale) dello storico degli stati civili da rimuovere. Sono specificati solamente gli id | [optional] 
**addressListToDelete** | **BuiltList&lt;String&gt;** | Lista (opzionale) dello storico degli indirizzi da rimuovere. Sono specificati solamente gli id | [optional] 
**citizenshipListToDelete** | **BuiltList&lt;String&gt;** | Lista (opzionale) dello storico delle cittadinanze da rimuovere. Sono specificati solamente gli id | [optional] 
**maritalStatusListToUpdate** | [**BuiltMap&lt;String, MaritalStatus&gt;**](MaritalStatus.md) | Dizionario (opzionale) dello storico degli stati civili da aggiornare | [optional] 
**addressListToUpdate** | [**BuiltMap&lt;String, Address&gt;**](Address.md) | Dizionario (opzionale) dello storico degli indirizzi da aggiornare | [optional] 
**citizenshipListToUpdate** | [**BuiltMap&lt;String, Citizenship&gt;**](Citizenship.md) | Dizionario (opzionale) dello storico delle cittadinanze da aggiornare | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


