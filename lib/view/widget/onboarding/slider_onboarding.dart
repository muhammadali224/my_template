import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/onboarding_controller/onboarding_controller.dart';
import 'onboarding_pages/onboarding_one.dart';
import 'onboarding_pages/onboarding_three.dart';
import 'onboarding_pages/onboarding_two.dart';

class SliderOnboarding extends GetView<OnboardingController> {
  const SliderOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: controller.pageController,
      onPageChanged: controller.onPageChanged,
      children: const [
        OnboardingOne(),
        OnboardingTwo(),
        OnboardingThree(),
      ],
    );
  }
}
