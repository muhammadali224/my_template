import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../controller/onboarding_controller/onboarding_controller.dart';
import '../../../core/constant/app_strings.dart';
import '../app_widget/button/app_button.dart';

class NextButton extends StatelessWidget {
  const NextButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnboardingController>(
      builder: (controller) {
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          width: double.infinity,
          child: AppButton.text(
              onPressed: controller.next,
              text: controller.currentPage.value == 3
                  ? AppStrings.home.tr.capitalizeFirst!
                  : AppStrings.next.tr.capitalizeFirst!),
        );
      },
    );
  }
}
