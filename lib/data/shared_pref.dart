import 'package:shared_preferences/shared_preferences.dart';

import '../constants.dart';
import '../functions/utils.dart';

SharedPref sharedPref = SharedPref();

class SharedPref {
  late Map<String, dynamic> data;

  late SharedPreferences _instance;

  Future<void> init() async {
    _instance = await SharedPreferences.getInstance();
    await getData();
  }

  Future<void> getData() async {
    final String jsonString =
        _instance.getString(keyInternalData) ?? await saveInternalData();

    Map<String, dynamic> map = fromStringToMap(value: jsonString);
    data = map;
  }

  Future<String> saveInternalData({String jsonString = jsonStringEmpty}) async {
    String jsonStringInitValue = jsonString;
    await _instance.setString(keyInternalData, jsonStringInitValue);
    return jsonStringInitValue;
  }
}
