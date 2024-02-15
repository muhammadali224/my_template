import 'package:elevarm_ui/elevarm_ui.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../controller/onboarding_controller/onboarding_controller.dart';
import '../../../core/constant/app_strings.dart';

class NextButton extends StatelessWidget {
  const NextButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnboardingController>(
      builder: (controller) {
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          width: double.infinity,
          child: ElevarmPrimaryButton.text(
              onPressed: controller.next,
              text: controller.currentPage == 2
                  ? AppStrings.register.tr.capitalizeFirst!
                  : AppStrings.next.tr.capitalizeFirst!),
        );
      },
    );
  }
}
