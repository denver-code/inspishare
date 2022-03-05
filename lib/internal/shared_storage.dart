import 'package:shared_preferences/shared_preferences.dart';

class StorageApi {
  void addStringToSF(key, value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(key, value);
  }

  void addIntToSF(key, value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setInt(key, value);
  }

  void addDoubleToSF(key, value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setDouble(key, value);
  }

  void addBoolToSF(key, value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool(key, value);
  }

  Future<String> getStringValuesSF(key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String stringValue = prefs.getString(key) ?? "";
    return stringValue;
  }

  Future<bool> getBoolValuesSF(key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool boolValue = prefs.getBool(key) ?? false;
    return boolValue;
  }

  Future<int> getIntValuesSF(key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    int intValue = prefs.getInt(key) ?? 0;
    return intValue;
  }

  Future<double> getDoubleValuesSF(key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    double doubleValue = prefs.getDouble(key) ?? 0.0;
    return doubleValue;
  }
}
