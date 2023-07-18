import 'package:shared_preferences/shared_preferences.dart';

class AppSharedPreferences {
AppSharedPreferences();

  static const String _tokenKey = 'token';

  SharedPreferences? _sharedPreferences;


  Future<void> _init() async {
    _sharedPreferences = await SharedPreferences.getInstance();
  }

  Future<String?> getToken() async {
    if (_sharedPreferences == null) {
      await _init();
    }
    return _sharedPreferences?.getString(_tokenKey);
  }

  Future<void> setToken(String token) async {
    if (_sharedPreferences == null) {
      await _init();
    }
    await _sharedPreferences?.setString(_tokenKey, token);
  }

  Future<void> removeToken() async {
    if (_sharedPreferences == null) {
      await _init();
    }
    await _sharedPreferences?.remove(_tokenKey);
  }
}
