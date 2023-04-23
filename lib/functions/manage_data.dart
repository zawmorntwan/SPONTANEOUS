import '../data/dio.dart';
import 'utils.dart';

Future<Map<String, dynamic>> getInternalData() async {
  //Todo: get data from shared pref
  //Todo: set the map under
  return {};
}

Future<Map<String, dynamic>> getExternalData() async {
  Map<String, dynamic> map = await getHttp();
  String jsonString = fromMapToString(map: map);
  await saveNewInternalData(externalDataString: jsonString);
  return map;
}

Future<void> saveNewInternalData({required String externalDataString}) async {
  //Todo: shared pref save data from json string
}
