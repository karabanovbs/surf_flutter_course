abstract class IDataStorage {
  Future<double?> getDouble(String key);

  Future<bool> setDouble(String key, double value);

  Future<List<String>?> getStringList(String key);

  Future<bool> setStringList(String key, List<String> value);

  Future<bool> removeKey(
    String key,
  );
}
