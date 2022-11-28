# openapi.model.PfInfoWithIds

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
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
**maritalStatusList** | [**BuiltMap&lt;String, MaritalStatus&gt;**](MaritalStatus.md) | Dizionario (opzionale) dello storico degli stati civili. | [optional] 
**addressList** | [**BuiltMap&lt;String, Address&gt;**](Address.md) | Dizionario (opzionale) dello storico degli indirizzi. | [optional] 
**citizenshipList** | [**BuiltMap&lt;String, Citizenship&gt;**](Citizenship.md) | Dizionario (opzionale) dello storico delle cittadinanze. | [optional] 
**pfId** | **String** |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


