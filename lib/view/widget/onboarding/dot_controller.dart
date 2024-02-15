import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../controller/onboarding_controller/onboarding_controller.dart';
import '../../../core/constant/color.dart';
import '../../../data/source/static/onboarding list/onboarding_list.dart';

class OnboardingDotController extends StatelessWidget {
  const OnboardingDotController({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnboardingController>(
        builder: (controller) => Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...List.generate(
                  onboardingList.length,
                  (index) => AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    margin: const EdgeInsets.only(right: 5),
                    width: controller.currentPage == index ? 20 : 6,
                    height: 6,
                    decoration: BoxDecoration(
                        color: AppColor.primaryColor,
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
              ],
            ));
  }
}
