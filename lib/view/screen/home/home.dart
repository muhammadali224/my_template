import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../controller/home_controller/home_controller.dart';
import '../../../../core/constant/app_strings.dart';
import '../../../../core/extension/space_extension.dart';
import '../../widget/app_widget/body_container.dart';
import '../../widget/home/categories.dart';
import '../../widget/home/home_slider.dart';
import '../../widget/home/search_section.dart';
import '../../widget/home/section_title.dart';
import '../app_drawer/app_drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeController());
    return AppDrawer(
      title: AppStrings.hodhod,
      child: ListView(
        shrinkWrap: true,
        children: [
          const BodyContainer(child: SearchSection()),
          25.gap,
          const HomeAdvSlider(),
          20.gap,
          const SectionTitle(title: AppStrings.categories),
          7.gap,
          const CategoriesList(),
          10.gap,
          const SectionTitle(title: AppStrings.offers),
        ],
      ),
    );
  }
}
