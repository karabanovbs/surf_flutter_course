import 'package:places/data/storage/storage_base.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesStorage extends IDataStorage {
  Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  @override
  Future<double?> getDouble(String key) async {
    return _prefs.then((prefs) => prefs.getDouble(key));
  }

  @override
  Future<bool> setDouble(String key, double value) async {
    return _prefs.then(
      (prefs) => prefs.setDouble(
        key,
        value,
      ),
    );
  }

  @override
  Future<List<String>?> getStringList(String key) {
    return _prefs.then((prefs) => prefs.getStringList(key));
  }

  @override
  Future<bool> setStringList(String key, List<String> value) {
    return _prefs.then(
      (prefs) => prefs.setStringList(
        key,
        value,
      ),
    );
  }

  @override
  Future<bool> removeKey(String key) {
    return _prefs.then(
      (prefs) => prefs.remove(
        key,
      ),
    );
  }

  @override
  Future<bool?> getBool(String key) {
    return _prefs.then(
      (prefs) => prefs.getBool(
        key,
      ),
    );
  }

  @override
  Future<bool> setBool(String key, bool value) {
    return _prefs.then(
      (prefs) => prefs.setBool(
        key,
        value,
      ),
    );
  }
}
