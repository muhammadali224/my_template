import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:icons_plus/icons_plus.dart';

import '../../../controller/services_controller/services_controller.dart';
import '../../../core/constant/app_strings.dart';
import '../../../core/utils/color.dart';
import '../../widget/app_widget/body_container.dart';

class ServicesScreen extends StatelessWidget {
  const ServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ServicesController controller = Get.put(ServicesController());
    return Scaffold(
      appBar: AppBar(
        title: Text(controller.name),
      ),
      body: BodyContainer(
        child: Column(
          children: [
            SizedBox(
              height: 50,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ChoiceChip(
                    label: const Icon(HeroIcons.adjustments_horizontal),
                    selected: false,
                    showCheckmark: false,
                    selectedColor: AppColor.primaryColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100)),
                    onSelected: (selected) {},
                  ),
                  ChoiceChip(
                    label: Text(AppStrings.nearby.tr),
                    selected: true,
                    selectedColor: AppColor.primaryColor,
                    showCheckmark: false,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100)),
                    onSelected: (selected) {},
                  ),
                  ChoiceChip(
                    label: Text(AppStrings.topRated.tr),
                    selected: false,
                    selectedColor: AppColor.primaryColor,
                    showCheckmark: false,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100)),
                    onSelected: (selected) {},
                  ),
                  ChoiceChip(
                    label: Text(AppStrings.newest.tr),
                    selected: false,
                    selectedColor: AppColor.primaryColor,
                    showCheckmark: false,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100)),
                    onSelected: (selected) {},
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                shrinkWrap: true,
                children: const [],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
