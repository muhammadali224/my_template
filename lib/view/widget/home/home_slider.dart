import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../controller/home_controller/home_controller.dart';

class HomeAdvSlider extends GetView<HomeController> {
  const HomeAdvSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: controller.adsList.length,
      itemBuilder: (BuildContext context, int index, int realIndex) => SizedBox(
        width: double.infinity,
        child: Image.asset(
          controller.adsList[index],
          fit: BoxFit.fill,
        ),
      ),
      options: CarouselOptions(
        height: 220,
        viewportFraction: 1,
        autoPlay: true,
        // autoPlayInterval: const Duration(seconds: 2),
        pageSnapping: true,
        autoPlayCurve: Curves.fastOutSlowIn,
        // autoPlayAnimationDuration: const Duration(seconds: 4)
      ),
    );
  }
}
