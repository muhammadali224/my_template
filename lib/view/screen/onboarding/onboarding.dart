import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/onboarding_controller/onboarding_controller.dart';
import '../../../core/constant/app_strings.dart';
import '../../../core/extension/space_extension.dart';
import '../../../core/utils/font_size.dart';
import '../../widget/onboarding/dot_fraction.dart';
import '../../widget/onboarding/next_button.dart';
import '../../widget/onboarding/slider_onboarding.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    OnboardingController controller = Get.put(OnboardingController());
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Expanded(flex: 3, child: SliderOnboarding()),
            Obx(() => controller.currentPage > 0
                ? Expanded(
                    child: Column(
                    children: [
                      const DotFractions(),
                      30.gap,
                      const NextButton(),
                      const Spacer(),
                      TextButton(
                          onPressed: controller.goToHome,
                          child: Text(
                            AppStrings.skip.tr,
                            style: const TextStyle(fontSize: AppFontSizes.md),
                          )),
                      10.gap,
                    ],
                  ))
                : Container()),
          ],
        ),
      ),
    );
  }
}
