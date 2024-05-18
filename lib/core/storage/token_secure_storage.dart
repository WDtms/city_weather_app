import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class TokenSecureStorage {
  final _storage = const FlutterSecureStorage();

  static const _accessTokenKey = 'access_token_key';

  Future<void> setAccessToken(String accessToken) => _storage.write(key: _accessTokenKey, value: accessToken);

  Future<void> clearAccessToken() => _storage.delete(key: _accessTokenKey);

  Future<String?> getAccessToken() => _storage.read(key: _accessTokenKey);
}