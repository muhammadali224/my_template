import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/constant/app_strings.dart';
import '../../../../core/extension/string_casing.dart';
import '../../../../core/utils/color.dart';
import '../../../../generated/assets.dart';
import '../onboarding_page.dart';

class OnboardingOne extends StatelessWidget {
  const OnboardingOne({super.key});

  @override
  Widget build(BuildContext context) {
    return OnboardingPage(
      lottieName: Assets.lottieOnboarding3,
      titleTextSpan: [
        TextSpan(
          text: "${AppStrings.empowers.tr} ".toTitleCase,
          style: DefaultTextStyle.of(context).style.copyWith(
              color: AppColor.primaryColor,
              fontSize: 28,
              fontWeight: FontWeight.bold),
        ),
        TextSpan(
          text: AppStrings.onboarding1Title.tr.toTitleCase,
          style: DefaultTextStyle.of(context).style.copyWith(fontSize: 28),
        ),
      ],
      descriptionTextSpan: [
        WidgetSpan(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "${AppStrings.atA.tr} ",
                    style: DefaultTextStyle.of(context)
                        .style
                        .copyWith(fontSize: 16),
                  ),
                  TextSpan(
                    text: "${AppStrings.hodhod.tr}, ",
                    style: DefaultTextStyle.of(context).style.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: AppColor.primaryColor,
                        ),
                  ),
                  TextSpan(
                    text: AppStrings.onboarding1Desc.tr,
                    style: DefaultTextStyle.of(context)
                        .style
                        .copyWith(fontSize: 16),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
