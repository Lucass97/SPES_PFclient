# openapi.api.ReportApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**askForMedicalReportsPermissionPermissionsPost**](ReportApi.md#askformedicalreportspermissionpermissionspost) | **POST** /permissions | Un MED richiede permessi su un sottoinsieme di referti medici.
[**getAllMedicalReportsByPfIdReportsPfIdPfGet**](ReportApi.md#getallmedicalreportsbypfidreportspfidpfget) | **GET** /reports/pf/{id_pf} | Restituisce i referti medici di una PF al medico.
[**getAllMedicalReportsReportsGet**](ReportApi.md#getallmedicalreportsreportsget) | **GET** /reports | Restituisce i referti medici di una PF.
[**getMedicalReportByIdReportsIdRefertoGet**](ReportApi.md#getmedicalreportbyidreportsidrefertoget) | **GET** /reports/{id_referto} | Trova una referto medico a partire dal suo id.
[**getPermissionsForPfPermissionsGet**](ReportApi.md#getpermissionsforpfpermissionsget) | **GET** /permissions | Restituisce le richieste effettuate dai MED.
[**setMedicalReportsPermissionsPermissionsPatch**](ReportApi.md#setmedicalreportspermissionspermissionspatch) | **PATCH** /permissions | PF concede/nega permessi su un sottoinsieme di referti medici.
[**uploadMedicalReportReportsUploadPost**](ReportApi.md#uploadmedicalreportreportsuploadpost) | **POST** /reports/upload | Upload di un referto medico.


# **askForMedicalReportsPermissionPermissionsPost**
> BuiltList<ReportOnlyId> askForMedicalReportsPermissionPermissionsPost(reportOnlyId)

Un MED richiede permessi su un sottoinsieme di referti medici.

Il medico richiede il permesso alla PF di visualizzare/scaricare referti medici.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: HTTPBearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('HTTPBearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('HTTPBearer').password = 'YOUR_PASSWORD';

final api = Openapi().getReportApi();
final BuiltList<ReportOnlyId> reportOnlyId = ; // BuiltList<ReportOnlyId> | 

try {
    final response = api.askForMedicalReportsPermissionPermissionsPost(reportOnlyId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling ReportApi->askForMedicalReportsPermissionPermissionsPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **reportOnlyId** | [**BuiltList&lt;ReportOnlyId&gt;**](ReportOnlyId.md)|  | [optional] 

### Return type

[**BuiltList&lt;ReportOnlyId&gt;**](ReportOnlyId.md)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllMedicalReportsByPfIdReportsPfIdPfGet**
> BuiltList<ReportInfo> getAllMedicalReportsByPfIdReportsPfIdPfGet(idPf)

Restituisce i referti medici di una PF al medico.

Restituisce la lista dei referti medici di una PF. Tale richiesta può essere effettuata solamente dai MED. Se il MED in questione non ha i permessi per un relativo report allora verrà indicato.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: HTTPBearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('HTTPBearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('HTTPBearer').password = 'YOUR_PASSWORD';

final api = Openapi().getReportApi();
final String idPf = idPf_example; // String | ID univoco della persona fragile

try {
    final response = api.getAllMedicalReportsByPfIdReportsPfIdPfGet(idPf);
    print(response);
} catch on DioError (e) {
    print('Exception when calling ReportApi->getAllMedicalReportsByPfIdReportsPfIdPfGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **idPf** | **String**| ID univoco della persona fragile | 

### Return type

[**BuiltList&lt;ReportInfo&gt;**](ReportInfo.md)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllMedicalReportsReportsGet**
> BuiltList<ReportInfo> getAllMedicalReportsReportsGet()

Restituisce i referti medici di una PF.

Restituisce la lista dei referti medici di una PF. Tale richiesta può essere effettuata solamente dalla PF in questione.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: HTTPBearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('HTTPBearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('HTTPBearer').password = 'YOUR_PASSWORD';

final api = Openapi().getReportApi();

try {
    final response = api.getAllMedicalReportsReportsGet();
    print(response);
} catch on DioError (e) {
    print('Exception when calling ReportApi->getAllMedicalReportsReportsGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;ReportInfo&gt;**](ReportInfo.md)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMedicalReportByIdReportsIdRefertoGet**
> Uint8List getMedicalReportByIdReportsIdRefertoGet(idReferto)

Trova una referto medico a partire dal suo id.

Ricerca e restituisce il referto medico con id corrispondente al parametro della richiesta. Tale richiesta può essere effettuata solamente dalla PF.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: HTTPBearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('HTTPBearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('HTTPBearer').password = 'YOUR_PASSWORD';

final api = Openapi().getReportApi();
final String idReferto = idReferto_example; // String | ID univoco del referto

try {
    final response = api.getMedicalReportByIdReportsIdRefertoGet(idReferto);
    print(response);
} catch on DioError (e) {
    print('Exception when calling ReportApi->getMedicalReportByIdReportsIdRefertoGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **idReferto** | **String**| ID univoco del referto | 

### Return type

[**Uint8List**](Uint8List.md)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/pdf

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPermissionsForPfPermissionsGet**
> BuiltList<PermissionPartialInfo> getPermissionsForPfPermissionsGet()

Restituisce le richieste effettuate dai MED.

La PF riceve le richieste relative ai permessi di visualizzazione/download di referti medici effettuate dai MED.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: HTTPBearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('HTTPBearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('HTTPBearer').password = 'YOUR_PASSWORD';

final api = Openapi().getReportApi();

try {
    final response = api.getPermissionsForPfPermissionsGet();
    print(response);
} catch on DioError (e) {
    print('Exception when calling ReportApi->getPermissionsForPfPermissionsGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;PermissionPartialInfo&gt;**](PermissionPartialInfo.md)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setMedicalReportsPermissionsPermissionsPatch**
> JsonObject setMedicalReportsPermissionsPermissionsPatch(permissionToModify)

PF concede/nega permessi su un sottoinsieme di referti medici.

La PF concede/nega accesso ai referti medici nei confronti del medico.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: HTTPBearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('HTTPBearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('HTTPBearer').password = 'YOUR_PASSWORD';

final api = Openapi().getReportApi();
final BuiltList<PermissionToModify> permissionToModify = ; // BuiltList<PermissionToModify> | 

try {
    final response = api.setMedicalReportsPermissionsPermissionsPatch(permissionToModify);
    print(response);
} catch on DioError (e) {
    print('Exception when calling ReportApi->setMedicalReportsPermissionsPermissionsPatch: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **permissionToModify** | [**BuiltList&lt;PermissionToModify&gt;**](PermissionToModify.md)|  | [optional] 

### Return type

[**JsonObject**](JsonObject.md)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uploadMedicalReportReportsUploadPost**
> ReportOnlyId uploadMedicalReportReportsUploadPost(referto, pfId, title)

Upload di un referto medico.

- Effettua l'upload di un referto medico nel repository della persona fragile. Tale richiesta può essere effettuata solamente dai MED. 

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: HTTPBearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('HTTPBearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('HTTPBearer').password = 'YOUR_PASSWORD';

final api = Openapi().getReportApi();
final MultipartFile referto = BINARY_DATA_HERE; // MultipartFile | 
final String pfId = pfId_example; // String | ID della PF.
final String title = title_example; // String | Titolo referto.

try {
    final response = api.uploadMedicalReportReportsUploadPost(referto, pfId, title);
    print(response);
} catch on DioError (e) {
    print('Exception when calling ReportApi->uploadMedicalReportReportsUploadPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **referto** | **MultipartFile**|  | 
 **pfId** | **String**| ID della PF. | [optional] 
 **title** | **String**| Titolo referto. | [optional] 

### Return type

[**ReportOnlyId**](ReportOnlyId.md)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

