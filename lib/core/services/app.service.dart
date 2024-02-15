import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class AppServices extends GetxService {
  GetStorage getBox = GetStorage();

  Future<AppServices> init() async {
    // await Firebase.initializeApp(
    //     options: DefaultFirebaseOptions.currentPlatform);
    // FlutterError.onError = (errorDetails) {
    //   FirebaseCrashlytics.instance.recordFlutterFatalError(errorDetails);
    // };
    // // Pass all uncaught asynchronous errors that aren't handled by the Flutter framework to Crashlytics
    // PlatformDispatcher.instance.onError = (error, stack) {
    //   FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
    //   return true;
    // };

    // await FcmHelper.initFcm();
    // await AwesomeNotificationsHelper.init();
    // FirebaseMessaging.instance.subscribeToTopic("all");
    return this;
  }
}

initialServices() async {
  await Get.putAsync(() => AppServices().init());
}
