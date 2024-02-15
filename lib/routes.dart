import 'package:get/get.dart';

import 'core/constant/routes.dart';
import 'core/middleware/middleware.dart';
import 'view/screen/onboarding/onboarding.dart';
import 'view/screen/user/home/home.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(name: '/', page: () => const OnBoarding(), middlewares: [
    HomeMiddleWare(),
  ]),
  GetPage(name: AppRoutes.home, page: () => const HomePage()),
];
