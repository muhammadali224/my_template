import 'package:get/get.dart';

import 'core/constant/routes.dart';
import 'core/middleware/middleware.dart';
import 'view/screen/home/home.dart';
import 'view/screen/onboarding/onboarding.dart';
import 'view/screen/services/services_screen.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(name: '/', page: () => const OnBoarding(), middlewares: [
    HomeMiddleWare(),
  ]),
  GetPage(name: AppRoutes.home, page: () => const HomePage()),
  GetPage(name: AppRoutes.services, page: () => const ServicesScreen()),
];
