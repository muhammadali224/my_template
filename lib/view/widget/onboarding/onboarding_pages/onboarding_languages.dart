import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../../../../controller/localization_controller/localization_controller.dart';
import '../../../../controller/onboarding_controller/onboarding_controller.dart';
import '../../../../core/constant/app_strings.dart';
import '../../../../core/constant/get_box_key.dart';
import '../../../../core/extension/space_extension.dart';
import '../../../../core/utils/color.dart';
import '../../../../core/utils/font_size.dart';
import '../../../../generated/assets.dart';
import '../../app_widget/button/app_button.dart';

class OnboardingLanguages extends StatelessWidget {
  const OnboardingLanguages({super.key});

  @override
  Widget build(BuildContext context) {
    OnboardingController onboardingController = Get.find();
    LocalizationController localizationController = Get.find();
    return Column(
      children: [
        Lottie.asset(
          Assets.lottieSelectLanguages,
          height: Get.width / 1.2,
          fit: BoxFit.fill,
          repeat: true,
        ),
        (Get.height / 10).gap,
        AutoSizeText(
          AppStrings.selectLanguage.tr,
          minFontSize: AppFontSizes.xl2,
        ),
        15.gap,
        SizedBox(
            width: Get.width / 2.5,
            child: AppButton.text(
              text: AppStrings.ar.tr,
              color: AppColor.secondColor,
              onPressed: () async {
                await localizationController
                    .changeLanguage(GetBoxKey.arLanguage);
                onboardingController.next();
              },
            )),
        10.gap,
        SizedBox(
            width: Get.width / 2.5,
            child: AppButton.text(
              text: AppStrings.en.tr,
              color: AppColor.secondColor,
              onPressed: () async {
                await localizationController
                    .changeLanguage(GetBoxKey.enLanguage);
                onboardingController.next();
              },
            )),
      ],
    );
  }
}
