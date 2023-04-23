import '../../functions/manage_data.dart';
import '../../functions/utils.dart';
import 'notifiers.dart';

Map<String, dynamic> dataMapCurrent = {};

Future<void> setDataNotifier() async {
  if (isConnectedNotifier.value) {
    dataMapCurrent = await getExternalData();
  } else {
    dataMapCurrent = await getInternalData();
  }
  if (dataMapCurrent.isNotEmpty) {
    dataNotifier.value = fromMapToDataModel(map: dataMapCurrent);
  }
}
