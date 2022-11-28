//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:dio/dio.dart';
import 'package:built_value/serializer.dart';
import 'package:SPES_PFclient/services/serializers.dart';
import 'package:SPES_PFclient/services/auth/api_key_auth.dart';
import 'package:SPES_PFclient/services/auth/basic_auth.dart';
import 'package:SPES_PFclient/services/auth/bearer_auth.dart';
import 'package:SPES_PFclient/services/auth/oauth.dart';
import 'package:SPES_PFclient/services/api/auth_api.dart';
import 'package:SPES_PFclient/services/api/pf_api.dart';
import 'package:SPES_PFclient/services/api/report_api.dart';
import 'package:SPES_PFclient/services/api/session_api.dart';
import 'package:SPES_PFclient/services/api/wallet_api.dart';
import 'package:SPES_PFclient/services/token_storage.dart';

class Openapi {
  //static const String basePath = r'http://10.0.2.2:8080';
  static const String basePath = r'http://192.168.1.52:8080';

  final Dio dio;
  final Serializers serializers;
  final TokenStorageLogic tokenLogic = TokenStorageLogic();

  Openapi({
    Dio? dio,
    Serializers? serializers,
    String? basePathOverride,
    List<Interceptor>? interceptors,
  })  : this.serializers = serializers ?? standardSerializers,
        this.dio = dio ??
            Dio(BaseOptions(
              baseUrl: basePathOverride ?? basePath,
              connectTimeout: 50000,
              receiveTimeout: 30000,
            ))  {
    if (interceptors == null) {
      this.dio.interceptors.addAll([
        OAuthInterceptor(),
        BasicAuthInterceptor(),
        BearerAuthInterceptor(),
        ApiKeyAuthInterceptor(),
      ]);
    } else {
      this.dio.interceptors.addAll(interceptors);
    }
      }
  void setOAuthToken(String name, String token) {
    if (this.dio.interceptors.any((i) => i is OAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((i) => i is OAuthInterceptor) as OAuthInterceptor).tokens[name] = token;
    }
  }

  void setBearerAuth(String name, String token) {
    if (this.dio.interceptors.any((i) => i is BearerAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((i) => i is BearerAuthInterceptor) as BearerAuthInterceptor).tokens[name] = token;
    }
  }

  void setBasicAuth(String name, String username, String password) {
    if (this.dio.interceptors.any((i) => i is BasicAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((i) => i is BasicAuthInterceptor) as BasicAuthInterceptor).authInfo[name] = BasicAuthInfo(username, password);
    }
  }

  void setApiKey(String name, String apiKey) {
    if (this.dio.interceptors.any((i) => i is ApiKeyAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((element) => element is ApiKeyAuthInterceptor) as ApiKeyAuthInterceptor).apiKeys[name] = apiKey;
    }
  }

  /// Get AuthApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  AuthApi getAuthApi() {
    return AuthApi(dio, serializers);
  }

  /// Get PfApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  PfApi getPfApi() {
    return PfApi(dio, serializers);
  }

  /// Get ReportApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ReportApi getReportApi() {
    return ReportApi(dio, serializers);
  }

  /// Get SessionApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  SessionApi getSessionApi() {
    return SessionApi(dio, serializers);
  }

  /// Get WalletApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  WalletApi getWalletApi() {
    return WalletApi(dio, serializers);
  }

  TokenStorageLogic getTokenLogic() {
    return tokenLogic;
  }

}
