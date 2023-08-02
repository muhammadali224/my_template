
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyServices extends GetxService {
  late SharedPreferences sharedPref;
  // late final LocalAuthentication auth;
  // bool supportState = false;

  Future<MyServices> init() async {
    // await Firebase.initializeApp();
    // FirebaseAnalytics.instance;
    sharedPref = await SharedPreferences.getInstance();
    // auth = LocalAuthentication();
    // supportState = await auth.isDeviceSupported();
    // print(supportState);
    return this;
  }
}

initialServices() async {
  await Get.putAsync(() => MyServices().init());
}
