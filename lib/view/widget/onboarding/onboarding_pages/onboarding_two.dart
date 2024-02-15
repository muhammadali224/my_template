import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../../core/constant/app_strings.dart';
import '../../../../core/extension/string_casing.dart';
import '../../../../core/utils/color.dart';
import '../../../../generated/assets.dart';
import '../onboarding_page.dart';

class OnboardingTwo extends StatelessWidget {
  const OnboardingTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return OnboardingPage(
      lottieName: Assets.lottieOnboarding2,
      titleTextSpan: [
        TextSpan(
          text: AppStrings.onboarding2Title.tr.toTitleCase,
          style: DefaultTextStyle.of(context).style.copyWith(
                fontSize: 28,
              ),
        ),
        TextSpan(
          text: AppStrings.control.tr,
          style: DefaultTextStyle.of(context).style.copyWith(
                fontSize: 28,
                color: AppColor.primaryColor,
                fontWeight: FontWeight.bold,
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
                    text: "${AppStrings.onboarding2Desc.tr} ",
                    style: DefaultTextStyle.of(context)
                        .style
                        .copyWith(fontSize: 16),
                  ),
                  TextSpan(
                    text: "${AppStrings.simplifies.tr}, ",
                    style: DefaultTextStyle.of(context).style.copyWith(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: AppColor.primaryColor,
                        ),
                  ),
                  TextSpan(
                    text: AppStrings.onboarding2Desc2.tr,
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
