# openapi.api.PfApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addAddressByPfIdPfIdPfAddressPost**](PfApi.md#addaddressbypfidpfidpfaddresspost) | **POST** /pf/{id_pf}/address | Aggiorna i dati relativi agli indirizzi della PF specificata.
[**addCitizenshipByPfIdPfIdPfCitizenshipPost**](PfApi.md#addcitizenshipbypfidpfidpfcitizenshippost) | **POST** /pf/{id_pf}/citizenship | Aggiorna i dati relativi alle cittadinanze della PF specificata
[**addMaritalStatusByPfIdPfIdPfMaritalStatusPost**](PfApi.md#addmaritalstatusbypfidpfidpfmaritalstatuspost) | **POST** /pf/{id_pf}/marital_status | Aggiorna i dati relativi agli stati civili della PF specificata.
[**getPfInfoByIdPfIdPfGet**](PfApi.md#getpfinfobyidpfidpfget) | **GET** /pf/{id_pf} | Ottiene i dati anagrafici di una PF a partire dal suo id.
[**registerPfPfPost**](PfApi.md#registerpfpfpost) | **POST** /pf | Registra una PF nel sistema.
[**searchPfsByQuerySearchPfGet**](PfApi.md#searchpfsbyquerysearchpfget) | **GET** /search/pf | Restituisce una lista di PF in base alla query sottomessa.
[**updatePfInfoByIdPfIdPfPatch**](PfApi.md#updatepfinfobyidpfidpfpatch) | **PATCH** /pf/{id_pf} | Aggiorna i dati anagrafici di una PF a partire dal suo ID.
[**updatePfUserInfoUserPfPatch**](PfApi.md#updatepfuserinfouserpfpatch) | **PATCH** /user/pf | Aggiorna lo user corrispondente alla PF specificata.


# **addAddressByPfIdPfIdPfAddressPost**
> JsonObject addAddressByPfIdPfIdPfAddressPost(idPf, address)

Aggiorna i dati relativi agli indirizzi della PF specificata.

Aggiorna i dati relativi agli indirizzi della PF specificata. Tale operazione può essere effettuata solamente dagli OPS.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: HTTPBearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('HTTPBearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('HTTPBearer').password = 'YOUR_PASSWORD';

final api = Openapi().getPfApi();
final String idPf = idPf_example; // String | ID univoco della persona fragile
final BuiltList<Address> address = ; // BuiltList<Address> | 

try {
    final response = api.addAddressByPfIdPfIdPfAddressPost(idPf, address);
    print(response);
} catch on DioError (e) {
    print('Exception when calling PfApi->addAddressByPfIdPfIdPfAddressPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **idPf** | **String**| ID univoco della persona fragile | 
 **address** | [**BuiltList&lt;Address&gt;**](Address.md)|  | [optional] 

### Return type

[**JsonObject**](JsonObject.md)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addCitizenshipByPfIdPfIdPfCitizenshipPost**
> JsonObject addCitizenshipByPfIdPfIdPfCitizenshipPost(idPf, citizenship)

Aggiorna i dati relativi alle cittadinanze della PF specificata

Aggiorna i dati relativi alle cittadinanze della PF specificata. Tale operazione può essere effettuata solamente dagli OPS.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: HTTPBearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('HTTPBearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('HTTPBearer').password = 'YOUR_PASSWORD';

final api = Openapi().getPfApi();
final String idPf = idPf_example; // String | ID univoco della persona fragile
final BuiltList<Citizenship> citizenship = ; // BuiltList<Citizenship> | 

try {
    final response = api.addCitizenshipByPfIdPfIdPfCitizenshipPost(idPf, citizenship);
    print(response);
} catch on DioError (e) {
    print('Exception when calling PfApi->addCitizenshipByPfIdPfIdPfCitizenshipPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **idPf** | **String**| ID univoco della persona fragile | 
 **citizenship** | [**BuiltList&lt;Citizenship&gt;**](Citizenship.md)|  | [optional] 

### Return type

[**JsonObject**](JsonObject.md)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addMaritalStatusByPfIdPfIdPfMaritalStatusPost**
> JsonObject addMaritalStatusByPfIdPfIdPfMaritalStatusPost(idPf, maritalStatus)

Aggiorna i dati relativi agli stati civili della PF specificata.

Aggiorna i dati relativi agli stati civili della PF specificata. Tale operazione può essere effettuata solamente dagli OPS.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: HTTPBearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('HTTPBearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('HTTPBearer').password = 'YOUR_PASSWORD';

final api = Openapi().getPfApi();
final String idPf = idPf_example; // String | ID univoco della persona fragile
final BuiltList<MaritalStatus> maritalStatus = ; // BuiltList<MaritalStatus> | 

try {
    final response = api.addMaritalStatusByPfIdPfIdPfMaritalStatusPost(idPf, maritalStatus);
    print(response);
} catch on DioError (e) {
    print('Exception when calling PfApi->addMaritalStatusByPfIdPfIdPfMaritalStatusPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **idPf** | **String**| ID univoco della persona fragile | 
 **maritalStatus** | [**BuiltList&lt;MaritalStatus&gt;**](MaritalStatus.md)|  | [optional] 

### Return type

[**JsonObject**](JsonObject.md)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPfInfoByIdPfIdPfGet**
> PfInfoWithIds getPfInfoByIdPfIdPfGet(idPf)

Ottiene i dati anagrafici di una PF a partire dal suo id.

Ottiene i dati anagrafici di una PF a partire dal suo id.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: HTTPBearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('HTTPBearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('HTTPBearer').password = 'YOUR_PASSWORD';

final api = Openapi().getPfApi();
final String idPf = idPf_example; // String | ID univoco della persona fragile

try {
    final response = api.getPfInfoByIdPfIdPfGet(idPf);
    print(response);
} catch on DioError (e) {
    print('Exception when calling PfApi->getPfInfoByIdPfIdPfGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **idPf** | **String**| ID univoco della persona fragile | 

### Return type

[**PfInfoWithIds**](PfInfoWithIds.md)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **registerPfPfPost**
> JsonObject registerPfPfPost(pfInfo)

Registra una PF nel sistema.

- Effettua la registrazione di una PFnel sistema, inserendo i suoi dati anagrafici. Tale registrazione può essere effettuata solamente dagli OPS. 

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: HTTPBearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('HTTPBearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('HTTPBearer').password = 'YOUR_PASSWORD';

final api = Openapi().getPfApi();
final PfInfo pfInfo = ; // PfInfo | 

try {
    final response = api.registerPfPfPost(pfInfo);
    print(response);
} catch on DioError (e) {
    print('Exception when calling PfApi->registerPfPfPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pfInfo** | [**PfInfo**](PfInfo.md)|  | [optional] 

### Return type

[**JsonObject**](JsonObject.md)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchPfsByQuerySearchPfGet**
> BuiltList<PFPartialInfoWithIds> searchPfsByQuerySearchPfGet(firstname, lastname, nicknames, cf, isAnonymous, isForeign, isDead, verified, offset, limit)

Restituisce una lista di PF in base alla query sottomessa.

Effettua una ricerca della PF sottoponendo al sistema una query. Tale ricerca può essere effettuata da OPS e MED.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: HTTPBearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('HTTPBearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('HTTPBearer').password = 'YOUR_PASSWORD';

final api = Openapi().getPfApi();
final String firstname = firstname_example; // String | Il nome della persona fragile.
final String lastname = lastname_example; // String | Il cognome della persona fragile.
final String nicknames = nicknames_example; // String | Il nickname della persona fragile.
final String cf = cf_example; // String | Il codice fiscale della persona fragile.
final bool isAnonymous = true; // bool | La persona fragile è anonima?
final bool isForeign = true; // bool | La persona fragile è straniera?
final bool isDead = true; // bool | La persona fragile è morta?
final bool verified = true; // bool | La persona fragile è stata verificata?
final int offset = 56; // int | Offset della ricerca.
final int limit = 56; // int | Limit della ricerca.

try {
    final response = api.searchPfsByQuerySearchPfGet(firstname, lastname, nicknames, cf, isAnonymous, isForeign, isDead, verified, offset, limit);
    print(response);
} catch on DioError (e) {
    print('Exception when calling PfApi->searchPfsByQuerySearchPfGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **firstname** | **String**| Il nome della persona fragile. | [optional] 
 **lastname** | **String**| Il cognome della persona fragile. | [optional] 
 **nicknames** | **String**| Il nickname della persona fragile. | [optional] 
 **cf** | **String**| Il codice fiscale della persona fragile. | [optional] 
 **isAnonymous** | **bool**| La persona fragile è anonima? | [optional] 
 **isForeign** | **bool**| La persona fragile è straniera? | [optional] 
 **isDead** | **bool**| La persona fragile è morta? | [optional] 
 **verified** | **bool**| La persona fragile è stata verificata? | [optional] 
 **offset** | **int**| Offset della ricerca. | [optional] [default to 0]
 **limit** | **int**| Limit della ricerca. | [optional] [default to 10]

### Return type

[**BuiltList&lt;PFPartialInfoWithIds&gt;**](PFPartialInfoWithIds.md)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updatePfInfoByIdPfIdPfPatch**
> JsonObject updatePfInfoByIdPfIdPfPatch(idPf, pfInfoWithIdsForUpdate)

Aggiorna i dati anagrafici di una PF a partire dal suo ID.

Aggiorna i dati anagrafici di una PF a partire dal suo ID. Tale operazione può essere effettuata solamente dagli OPS.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: HTTPBearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('HTTPBearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('HTTPBearer').password = 'YOUR_PASSWORD';

final api = Openapi().getPfApi();
final String idPf = idPf_example; // String | ID univoco della persona fragile
final PfInfoWithIdsForUpdate pfInfoWithIdsForUpdate = ; // PfInfoWithIdsForUpdate | 

try {
    final response = api.updatePfInfoByIdPfIdPfPatch(idPf, pfInfoWithIdsForUpdate);
    print(response);
} catch on DioError (e) {
    print('Exception when calling PfApi->updatePfInfoByIdPfIdPfPatch: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **idPf** | **String**| ID univoco della persona fragile | 
 **pfInfoWithIdsForUpdate** | [**PfInfoWithIdsForUpdate**](PfInfoWithIdsForUpdate.md)|  | [optional] 

### Return type

[**JsonObject**](JsonObject.md)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updatePfUserInfoUserPfPatch**
> UserInfoWithPwd updatePfUserInfoUserPfPatch(userInfoForUpdate)

Aggiorna lo user corrispondente alla PF specificata.

Aggiorna lo user corrispondente alla PF specificata.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: HTTPBearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('HTTPBearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('HTTPBearer').password = 'YOUR_PASSWORD';

final api = Openapi().getPfApi();
final UserInfoForUpdate userInfoForUpdate = ; // UserInfoForUpdate | 

try {
    final response = api.updatePfUserInfoUserPfPatch(userInfoForUpdate);
    print(response);
} catch on DioError (e) {
    print('Exception when calling PfApi->updatePfUserInfoUserPfPatch: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userInfoForUpdate** | [**UserInfoForUpdate**](UserInfoForUpdate.md)|  | [optional] 

### Return type

[**UserInfoWithPwd**](UserInfoWithPwd.md)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

