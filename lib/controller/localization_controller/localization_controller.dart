import 'dart:ui';

import 'package:get/get.dart';

import '../../core/constant/get_box_key.dart';
import '../../core/services/app.service.dart';

class LocalizationController extends GetxController {
  Locale? initLanguages;
  AppServices myServices = Get.find();

  changeLanguage(String languageCode) async {
    Locale locale = Locale(languageCode);
    myServices.getBox.write(GetBoxKey.language, languageCode);
    await Get.updateLocale(locale);
  }

  @override
  void onInit() {
    String? getBoxLanguages = myServices.getBox.read(GetBoxKey.language);
    if (getBoxLanguages == GetBoxKey.arLanguage) {
      initLanguages = const Locale(GetBoxKey.arLanguage);
    } else if (getBoxLanguages == GetBoxKey.enLanguage) {
      initLanguages = const Locale(GetBoxKey.enLanguage);
    } else {
      initLanguages = Locale(Get.deviceLocale!.languageCode);
    }

    super.onInit();
  }
}
