import '../data/notifiers/manage_notifiers.dart';
import '../data/shared_pref.dart';

Future<void> initApp() async {
  await initSharedPref();
  await initDataNotifier();
}

Future<void> initSharedPref() async {
  await sharedPref.init();
}

Future<void> initDataNotifier() async {
  await setDataNotifier();
}
