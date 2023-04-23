import '../../functions/manage_data.dart';
import '../../functions/utils.dart';
import 'notifiers.dart';

Map<String, dynamic> dataMapCurrent = {};
Map<String, dynamic> dataMapInternal = {};
Map<String, dynamic> dataMapExternal = {};


Future<void> setDataNotifier() async {
  if (isConnectedNotifier.value) {
    dataMapExternal = await getExternalData();
    dataMapInternal = dataMapExternal;
    dataMapCurrent = dataMapExternal;
  } else {
    dataMapInternal = await getInternalData();
    dataMapCurrent = dataMapInternal;
    // dataMapExternal = dataMapInternal;
  }
  if (dataMapCurrent.isNotEmpty) {
    dataNotifier.value = fromMapToDataModel(map: dataMapCurrent);
  }
}
