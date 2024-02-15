import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../core/constant/routes.dart';

class OnboardingController extends GetxController {
  int currentPage = 0;
  late PageController pageController;

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }

  next() {
    currentPage++;
    if (currentPage > 2) {
      Get.offAllNamed(AppRoutes.home);
    } else {
      pageController.animateToPage(currentPage,
          duration: const Duration(milliseconds: 600), curve: Curves.easeInOut);
    }
  }

  onPageChanged(int index) {
    currentPage = index;
    update();
  }
}
