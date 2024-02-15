import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/onboarding_controller/onboarding_controller.dart';
import '../../../core/constant/color.dart';

class OnboardingButton extends GetView<OnboardingController> {
  const OnboardingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 40),
      height: 40,
      child: MaterialButton(
        onPressed: () {
          controller.next();
        },
        textColor: Colors.white,
        color: AppColor.primaryColor,
        child: const Text(
          "متابعة",
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
