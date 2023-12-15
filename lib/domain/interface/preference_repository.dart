abstract class PreferenceRepository {
  initPreference();
  setLoginValue(bool value);
  getLoginValue();
  setStringIntoCache(String key, String? value);
  Future<String> getStringFromCache(String? key);
}
