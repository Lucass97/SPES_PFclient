# openapi.model.PfInfo

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
**maritalStatusList** | [**BuiltList&lt;MaritalStatus&gt;**](MaritalStatus.md) | Lista (opzionale) dello storico degli stati civili. | [optional] 
**addressList** | [**BuiltList&lt;Address&gt;**](Address.md) | Lista (opzionale) dello storico degli indirizzi. | [optional] 
**citizenshipList** | [**BuiltList&lt;Citizenship&gt;**](Citizenship.md) | Lista (opzionale) dello storico delle cittadinanze. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


