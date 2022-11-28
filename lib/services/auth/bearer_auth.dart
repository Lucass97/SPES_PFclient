//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:dio/dio.dart';
import 'package:SPES_PFclient/services/auth/auth.dart';

class BearerAuthInterceptor extends AuthInterceptor {
  final Map<String, String> tokens = {};

  //final api = Openapi();
  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) {
    final authInfo = getAuthInfo(options,
        (secure) => secure['type'] == 'http' && secure['scheme'] == 'bearer');
    for (final info in authInfo) {
      final token = tokens[info['name']];
      if (token == null) {
        //api.setBearerAuth("HTTPBearer", "null");
        //rimando a login?
        break;
      } else {
        options.headers['Authorization'] = 'Bearer ${token}';
      }
    }
    super.onRequest(options, handler);
  }
}
