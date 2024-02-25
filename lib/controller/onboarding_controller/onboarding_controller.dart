import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../core/constant/routes.dart';

class OnboardingController extends GetxController {
  RxInt currentPage = 0.obs;
  late PageController pageController;

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }

  next() {
    currentPage++;
    if (currentPage > 3) {
      goToHome();
    } else {
      pageController.animateToPage(currentPage.value,
          duration: const Duration(milliseconds: 600),
          curve: Curves.easeInCirc);
    }
    update();
  }

  void goToHome() {
    Get.offAllNamed(AppRoutes.home);
  }

  onPageChanged(int index) {
    currentPage.value = index;
    update();
  }
}
