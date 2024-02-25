import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:get/get.dart';

import '../../core/constant/app_strings.dart';
import '../../core/constant/get_box_key.dart';
import '../../core/constant/routes.dart';
import '../../core/services/app.service.dart';
import '../localization_controller/localization_controller.dart';
import '../theme_controller/theme_controller.dart';

class AppDrawerController extends GetxController {
  final advancedDrawerController = AdvancedDrawerController();
  late RxBool isRTL;
  late String languageCode;
  late String languageName;
  final LocalizationController _localizationController =
      Get.find<LocalizationController>();

  void handleMenuButtonPressed() {
    advancedDrawerController.showDrawer();
  }

  void changeTheme() {
    ThemeController themeController = Get.put(ThemeController());

    themeController.switchTheme();
  }

  void toggleLanguages() {
    _localizationController.changeLanguage(languageCode == GetBoxKey.arLanguage
        ? GetBoxKey.enLanguage
        : GetBoxKey.arLanguage);
    isRTL.toggle();
    languageCode = getLanguageCode();
    languageName = getLanguageName();
    advancedDrawerController.hideDrawer();
    update();
  }

  String getLanguageCode() {
    return Get.find<AppServices>().getBox.read(GetBoxKey.language);
  }

  String getLanguageName() {
    return languageCode == GetBoxKey.arLanguage ? AppStrings.ar : AppStrings.en;
  }

  void goToHome() {
    Get.offAllNamed(AppRoutes.home);
  }

  @override
  void onInit() {
    isRTL = getLanguageCode() == GetBoxKey.arLanguage ? true.obs : false.obs;
    languageCode = getLanguageCode();
    languageName = getLanguageName();
    super.onInit();
  }
}
