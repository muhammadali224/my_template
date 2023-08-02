import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/onboarding controller/onboarding_controller.dart';
import '../widget/onboarding/dot_controller.dart';
import '../widget/onboarding/onboarding_button.dart';
import '../widget/onboarding/slider_onboarding.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OnboardingController());
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(flex: 4, child: SliderOnboarding()),
            Expanded(
                flex: 1,
                child: Column(
                  children: [
                    OnboardingDotController(),
                    Spacer(flex: 2),
                    OnboardingButton(),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
