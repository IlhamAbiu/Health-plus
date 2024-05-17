import 'package:shared_preferences/shared_preferences.dart';

class Utils {
  Utils._();
  static Utils? _instance;
  factory Utils() => _instance ??= Utils._();

  SharedPreferences? _storage;

  Future<void> write(String key, String value) async {
    _storage ??= await SharedPreferences.getInstance();
    await _storage!.setString(key, value);
  }

  Future<String?> read(String key) async {
    _storage ??= await SharedPreferences.getInstance();
    return _storage!.getString(key);
  }
}
