import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../../core/constant/app_strings.dart';
import '../../../../core/extension/string_casing.dart';
import '../../../../core/utils/color.dart';
import '../../../../generated/assets.dart';
import '../onboarding_page.dart';

class OnboardingThree extends StatelessWidget {
  const OnboardingThree({super.key});

  @override
  Widget build(BuildContext context) {
    return OnboardingPage(
      lottieName: Assets.lottieOnboarding3,
      titleTextSpan: [
        WidgetSpan(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: AppStrings.comprehensiveSolution.tr,
                    style: DefaultTextStyle.of(context).style.copyWith(
                          fontSize: 28,
                          color: AppColor.primaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  TextSpan(
                    text: AppStrings.onboarding3Title.tr.toTitleCase,
                    style: DefaultTextStyle.of(context).style.copyWith(
                          fontSize: 28,
                        ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
      descriptionTextSpan: [
        WidgetSpan(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: AppStrings.masrafji.tr,
                    style: DefaultTextStyle.of(context).style.copyWith(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: AppColor.primaryColor,
                        ),
                  ),
                  TextSpan(
                    text: AppStrings.onboarding3Desc.tr,
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
