# openapi.api.WalletApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getIdentificationDocumentByIdWalletPfIdPfDocsDocIdGet**](WalletApi.md#getidentificationdocumentbyidwalletpfidpfdocsdocidget) | **GET** /wallet/pf/{id_pf}/docs/{doc_id} | Restituisce il documento indetificativo della PF in base all&#39;ID.
[**getIdentificationDocumentsWalletPfIdPfDocsGet**](WalletApi.md#getidentificationdocumentswalletpfidpfdocsget) | **GET** /wallet/pf/{id_pf}/docs | Restituisce la lista dei documenti identificativi associati alla PF
[**updateIdentificationDocumentByIdWalletPfIdPfDocsDocIdPut**](WalletApi.md#updateidentificationdocumentbyidwalletpfidpfdocsdocidput) | **PUT** /wallet/pf/{id_pf}/docs/{doc_id} | Aggiorna il documento identificativo della persona fragile.
[**uploadIdentificationDocumentWalletPfIdPfDocsUploadPost**](WalletApi.md#uploadidentificationdocumentwalletpfidpfdocsuploadpost) | **POST** /wallet/pf/{id_pf}/docs/upload | Upload dei documenti identificativi di una PF.


# **getIdentificationDocumentByIdWalletPfIdPfDocsDocIdGet**
> Uint8List getIdentificationDocumentByIdWalletPfIdPfDocsDocIdGet(idPf, docId)

Restituisce il documento indetificativo della PF in base all'ID.

- Restituisce il documento indetificativo della PF in base all'ID. Tale operazione può essere effettuata solamente dagli OPS e PF.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: HTTPBearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('HTTPBearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('HTTPBearer').password = 'YOUR_PASSWORD';

final api = Openapi().getWalletApi();
final String idPf = idPf_example; // String | ID univoco della persona fragile
final String docId = docId_example; // String | ID univoco del documento identificativo.

try {
    final response = api.getIdentificationDocumentByIdWalletPfIdPfDocsDocIdGet(idPf, docId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling WalletApi->getIdentificationDocumentByIdWalletPfIdPfDocsDocIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **idPf** | **String**| ID univoco della persona fragile | 
 **docId** | **String**| ID univoco del documento identificativo. | 

### Return type

[**Uint8List**](Uint8List.md)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/pdf

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getIdentificationDocumentsWalletPfIdPfDocsGet**
> BuiltList<DocInfo> getIdentificationDocumentsWalletPfIdPfDocsGet(idPf)

Restituisce la lista dei documenti identificativi associati alla PF

- Restituisce la lista dei documenti identificativi associati alla PF. Tale operazione può essere effettuata solamente dagli OPS e PF.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: HTTPBearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('HTTPBearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('HTTPBearer').password = 'YOUR_PASSWORD';

final api = Openapi().getWalletApi();
final String idPf = idPf_example; // String | ID univoco della persona fragile

try {
    final response = api.getIdentificationDocumentsWalletPfIdPfDocsGet(idPf);
    print(response);
} catch on DioError (e) {
    print('Exception when calling WalletApi->getIdentificationDocumentsWalletPfIdPfDocsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **idPf** | **String**| ID univoco della persona fragile | 

### Return type

[**BuiltList&lt;DocInfo&gt;**](DocInfo.md)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateIdentificationDocumentByIdWalletPfIdPfDocsDocIdPut**
> DocPartialInfo updateIdentificationDocumentByIdWalletPfIdPfDocsDocIdPut(idPf, docId, tipologia, entity, number, placeOfIssue, releaseDate, expirationDate, doc)

Aggiorna il documento identificativo della persona fragile.

- Effettua un aggiornamento del documento indentificativo della PF (chiamata soggetta a rimozione nel caso si volesse mantenere uno storico dei documenti identificativi per tipologia). Tale operazione può essere effettuata solamente dagli OPS. 

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: HTTPBearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('HTTPBearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('HTTPBearer').password = 'YOUR_PASSWORD';

final api = Openapi().getWalletApi();
final String idPf = idPf_example; // String | ID univoco della persona fragile
final String docId = docId_example; // String | ID univoco del documento identificativo.
final String tipologia = tipologia_example; // String | Tipologia di documento
final String entity = entity_example; // String | Ente di rilascio.
final String number = number_example; // String | Numero del documento.
final String placeOfIssue = placeOfIssue_example; // String | Luogo di rilascio.
final String releaseDate = releaseDate_example; // String | Data di rilascio.
final String expirationDate = expirationDate_example; // String | Data di scadenza.
final MultipartFile doc = BINARY_DATA_HERE; // MultipartFile | 

try {
    final response = api.updateIdentificationDocumentByIdWalletPfIdPfDocsDocIdPut(idPf, docId, tipologia, entity, number, placeOfIssue, releaseDate, expirationDate, doc);
    print(response);
} catch on DioError (e) {
    print('Exception when calling WalletApi->updateIdentificationDocumentByIdWalletPfIdPfDocsDocIdPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **idPf** | **String**| ID univoco della persona fragile | 
 **docId** | **String**| ID univoco del documento identificativo. | 
 **tipologia** | **String**| Tipologia di documento | [optional] 
 **entity** | **String**| Ente di rilascio. | [optional] 
 **number** | **String**| Numero del documento. | [optional] 
 **placeOfIssue** | **String**| Luogo di rilascio. | [optional] 
 **releaseDate** | **String**| Data di rilascio. | [optional] 
 **expirationDate** | **String**| Data di scadenza. | [optional] 
 **doc** | **MultipartFile**|  | [optional] 

### Return type

[**DocPartialInfo**](DocPartialInfo.md)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uploadIdentificationDocumentWalletPfIdPfDocsUploadPost**
> DocPartialInfo uploadIdentificationDocumentWalletPfIdPfDocsUploadPost(idPf, doc, tipologia, entity, number, placeOfIssue, releaseDate, expirationDate)

Upload dei documenti identificativi di una PF.

- Effettua l'upload di un documento identificativo della persona fragile. Tale operazione può essere effettuata solamente dagli OPS. 

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: HTTPBearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('HTTPBearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('HTTPBearer').password = 'YOUR_PASSWORD';

final api = Openapi().getWalletApi();
final String idPf = idPf_example; // String | ID univoco della persona fragile
final MultipartFile doc = BINARY_DATA_HERE; // MultipartFile | 
final String tipologia = tipologia_example; // String | Tipologia di documento.
final String entity = entity_example; // String | Ente di rilascio.
final String number = number_example; // String | Numero del documento.
final String placeOfIssue = placeOfIssue_example; // String | Luogo di rilascio.
final String releaseDate = releaseDate_example; // String | Data di rilascio.
final String expirationDate = expirationDate_example; // String | Data di scadenza.

try {
    final response = api.uploadIdentificationDocumentWalletPfIdPfDocsUploadPost(idPf, doc, tipologia, entity, number, placeOfIssue, releaseDate, expirationDate);
    print(response);
} catch on DioError (e) {
    print('Exception when calling WalletApi->uploadIdentificationDocumentWalletPfIdPfDocsUploadPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **idPf** | **String**| ID univoco della persona fragile | 
 **doc** | **MultipartFile**|  | 
 **tipologia** | **String**| Tipologia di documento. | [optional] 
 **entity** | **String**| Ente di rilascio. | [optional] 
 **number** | **String**| Numero del documento. | [optional] 
 **placeOfIssue** | **String**| Luogo di rilascio. | [optional] 
 **releaseDate** | **String**| Data di rilascio. | [optional] 
 **expirationDate** | **String**| Data di scadenza. | [optional] 

### Return type

[**DocPartialInfo**](DocPartialInfo.md)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

