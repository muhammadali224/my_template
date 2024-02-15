import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/onboarding_controller/onboarding_controller.dart';
import '../../../core/extension/space_extension.dart';
import '../../widget/onboarding/dot_fraction.dart';
import '../../widget/onboarding/next_button.dart';
import '../../widget/onboarding/slider_onboarding.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OnboardingController());
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Expanded(flex: 3, child: SliderOnboarding()),
            Expanded(
                child: Column(
              children: [
                const DotFractions(),
                30.height,
                const NextButton(),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
