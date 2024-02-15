import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/constant/get_box_key.dart';
import '../../core/services/app.service.dart';

class ThemeController extends GetxController {
  AppServices myServices = Get.find<AppServices>();

  switchTheme() {
    Get.changeThemeMode(getIsDarkMode() ? ThemeMode.light : ThemeMode.dark);
    saveTheme(!getIsDarkMode());
  }

  bool getIsDarkMode() {
    return myServices.getBox.read(GetBoxKey.isDark) ?? false;
  }

  saveTheme(bool value) {
    myServices.getBox.write(GetBoxKey.isDark, value);
  }

  ThemeMode get theme => getIsDarkMode() ? ThemeMode.dark : ThemeMode.light;
}
