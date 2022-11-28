# openapi.model.LoginResponse

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**jwt** | **String** | Token di accesso associato all'utente. Tale token rispetta lo standard RFC 7519. | [optional] 
**expiresAt** | [**DateTime**](DateTime.md) |  | [optional] 
**firstAccess** | **bool** | Indica qualora sia il primo accesso effettuato dall'utente. Utile per richiedere la modifica della pwd al primo accesso delle PF. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


