import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/services/services.dart';
import '../../data/source/static/onboarding list/onboarding_list.dart';

class OnboardingController extends GetxController {
  int currentPage = 0;
  late PageController pageController;
  MyServices myServices = Get.find();

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }

  next() {
    currentPage++;
    if (currentPage > onboardingList.length - 1) {
      myServices.sharedPref.setString('step', "1");
      // Get.offAllNamed(AppRoutes.selectCompany);
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
