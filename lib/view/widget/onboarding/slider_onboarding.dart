import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../../../controller/onboarding controller/onboarding_controller.dart';
import '../../../data/source/static/onboarding list/onboarding_list.dart';

class SliderOnboarding extends GetView<OnboardingController> {
  const SliderOnboarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        controller: controller.pageController,
        onPageChanged: (val) {
          controller.onPageChanged(val);
        },
        itemCount: onboardingList.length,
        itemBuilder: (context, i) {
          if (i == 0 || i == 1) {
            return Column(
              children: [
                Image.asset(
                  onboardingList[i].image!,
                  height: i == 0 ? Get.width / 1.2 : Get.width / 0.9,
                  fit: BoxFit.fill,
                ),
                const SizedBox(height: 30),
                Text(
                  onboardingList[i].title!,
                  style: Theme.of(context).textTheme.displayMedium,
                ),
                const SizedBox(height: 10),
                Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    child: Text(
                      onboardingList[i].description!,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyLarge,
                    )),
              ],
            );
          } else {
            return Column(
              children: [
                Lottie.asset(
                  onboardingList[i].image!,
                  height: Get.width / 1.2,
                  repeat: true,
                  fit: BoxFit.fill,
                ),
                const SizedBox(height: 60),
                Text(
                  onboardingList[i].title!,
                  style: Theme.of(context).textTheme.displayMedium,
                ),
                const SizedBox(height: 20),
                Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    child: Text(
                      onboardingList[i].description!,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyLarge,
                    )),
              ],
            );
          }
        });
  }
}
