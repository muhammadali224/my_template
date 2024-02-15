import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../../../core/extension/space_extension.dart';

class OnboardingPage extends StatelessWidget {
  final String lottieName;
  final List<InlineSpan> titleTextSpan;
  final List<InlineSpan> descriptionTextSpan;

  const OnboardingPage(
      {super.key,
      required this.lottieName,
      required this.titleTextSpan,
      required this.descriptionTextSpan});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Lottie.asset(
          lottieName,
          height: Get.width / 1.2,
          fit: BoxFit.fill,
        ),
        SizedBox(height: Get.height / 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              children: titleTextSpan,
            ),
          ),
        ),
        15.height,
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            style: DefaultTextStyle.of(context).style.copyWith(fontSize: 16),
            children: descriptionTextSpan,
          ),
        ),
      ],
    );
  }
}
