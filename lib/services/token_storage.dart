import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:jwt_decode/jwt_decode.dart';

class TokenStorageLogic {
  final storage = const FlutterSecureStorage();

  getToken() async {
    String? token = await storage.read(key: 'token');
    bool isExpired = Jwt.isExpired(token!);
    if (isExpired) {
      storage.deleteAll();
      throw TokenExpiredException('Token expired');
    }
    return token;
  }

  setToken(String token) async {
    await storage.write(key: 'token', value: token);
  }

  getPfId() async {
    String? token = await storage.read(key: 'token');
    bool isExpired = Jwt.isExpired(token!);
    if (isExpired) {
      storage.deleteAll();
      throw TokenExpiredException('Token expired');
    }
    Map<String, dynamic> payload = Jwt.parseJwt(token!);
    return payload['pf_id'];
  }

  deleteToken() {
    storage.deleteAll();
  }
}

class TokenExpiredException implements Exception {
  String cause;

  TokenExpiredException(this.cause);
}
