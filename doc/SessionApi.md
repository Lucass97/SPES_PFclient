# openapi.api.SessionApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addReportsToSessionSessionReportsPost**](SessionApi.md#addreportstosessionsessionreportspost) | **POST** /session/reports | Il MED aggiunge alla propria sessione un sottoinsieme di report.
[**deleteReportFromSessionSessionReportsIdRefertoDelete**](SessionApi.md#deletereportfromsessionsessionreportsidrefertodelete) | **DELETE** /session/reports/{id_referto} | Il MED elimina dalla sessione il referto medico specificato. 
[**emptyReportsFromSessionSessionReportsDelete**](SessionApi.md#emptyreportsfromsessionsessionreportsdelete) | **DELETE** /session/reports | Il MED elimina dalla sessione tutti i referti medici precedentemente selezionati. 
[**getReportsFromSessionSessionReportsGet**](SessionApi.md#getreportsfromsessionsessionreportsget) | **GET** /session/reports | Il MED ottiene dalla propria sessione la lista di referti medici precedentemente selezionati


# **addReportsToSessionSessionReportsPost**
> int addReportsToSessionSessionReportsPost(reportOnlyId)

Il MED aggiunge alla propria sessione un sottoinsieme di report.

Il MED aggiunge alla propria sessione un sottoinsieme di report.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: HTTPBearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('HTTPBearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('HTTPBearer').password = 'YOUR_PASSWORD';

final api = Openapi().getSessionApi();
final BuiltList<ReportOnlyId> reportOnlyId = ; // BuiltList<ReportOnlyId> | 

try {
    final response = api.addReportsToSessionSessionReportsPost(reportOnlyId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling SessionApi->addReportsToSessionSessionReportsPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **reportOnlyId** | [**BuiltList&lt;ReportOnlyId&gt;**](ReportOnlyId.md)|  | [optional] 

### Return type

**int**

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteReportFromSessionSessionReportsIdRefertoDelete**
> JsonObject deleteReportFromSessionSessionReportsIdRefertoDelete(idReferto)

Il MED elimina dalla sessione il referto medico specificato. 

Il MED elimina dalla sessione il referto medico specificato. 

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: HTTPBearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('HTTPBearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('HTTPBearer').password = 'YOUR_PASSWORD';

final api = Openapi().getSessionApi();
final String idReferto = idReferto_example; // String | ID univoco del referto

try {
    final response = api.deleteReportFromSessionSessionReportsIdRefertoDelete(idReferto);
    print(response);
} catch on DioError (e) {
    print('Exception when calling SessionApi->deleteReportFromSessionSessionReportsIdRefertoDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **idReferto** | **String**| ID univoco del referto | 

### Return type

[**JsonObject**](JsonObject.md)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **emptyReportsFromSessionSessionReportsDelete**
> JsonObject emptyReportsFromSessionSessionReportsDelete()

Il MED elimina dalla sessione tutti i referti medici precedentemente selezionati. 

Il MED elimina dalla sessione tutti i referti medici precedentemente selezionati 

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: HTTPBearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('HTTPBearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('HTTPBearer').password = 'YOUR_PASSWORD';

final api = Openapi().getSessionApi();

try {
    final response = api.emptyReportsFromSessionSessionReportsDelete();
    print(response);
} catch on DioError (e) {
    print('Exception when calling SessionApi->emptyReportsFromSessionSessionReportsDelete: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**JsonObject**](JsonObject.md)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getReportsFromSessionSessionReportsGet**
> JsonObject getReportsFromSessionSessionReportsGet()

Il MED ottiene dalla propria sessione la lista di referti medici precedentemente selezionati

Il MED ottiene dalla propria sessione la lista di referti medici precedentemente selezionati.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: HTTPBearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('HTTPBearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('HTTPBearer').password = 'YOUR_PASSWORD';

final api = Openapi().getSessionApi();

try {
    final response = api.getReportsFromSessionSessionReportsGet();
    print(response);
} catch on DioError (e) {
    print('Exception when calling SessionApi->getReportsFromSessionSessionReportsGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**JsonObject**](JsonObject.md)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

