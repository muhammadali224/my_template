import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'binding/initial_binding.dart';
import 'controller/localization_controller/localization_controller.dart';
import 'controller/theme_controller/theme_controller.dart';
import 'core/localization/translation.dart';
import 'core/services/app.service.dart';
import 'core/utils/theme.dart';
import 'routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();

  await initialServices();
  // FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterFatalError;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    LocalizationController controller = Get.put(LocalizationController());
    ThemeController themeController = Get.put(ThemeController());

    return GetMaterialApp(
      locale: controller.initLanguages,
      // locale: const Locale(GetBoxKey.arLanguage),

      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.cupertino,
      translations: AppTranslation(),
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: themeController.theme,
      // themeMode: ThemeMode.system,
      initialBinding: InitBindings(),
      getPages: routes,
    );
  }
}
