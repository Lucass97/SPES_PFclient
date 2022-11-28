# openapi.api.AuthApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**authAuthPost**](AuthApi.md#authauthpost) | **POST** /auth | Autentica l&#39;utente nel sistema.


# **authAuthPost**
> LoginResponse authAuthPost(login)

Autentica l'utente nel sistema.

Autentica l'utente nel sistema.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getAuthApi();
final Login login = ; // Login | 

try {
    final response = api.authAuthPost(login);
    print(response);
} catch on DioError (e) {
    print('Exception when calling AuthApi->authAuthPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **login** | [**Login**](Login.md)|  | [optional] 

### Return type

[**LoginResponse**](LoginResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

