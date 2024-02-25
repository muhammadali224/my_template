import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../controller/home_controller/home_controller.dart';
import '../../../core/constant/routes.dart';
import '../../../core/utils/color.dart';

class CategoriesList extends GetView<HomeController> {
  const CategoriesList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        children: [
          ...List.generate(
              controller.services.length,
              (index) => GestureDetector(
                    onTap: () {
                      Get.toNamed(AppRoutes.services, arguments: {
                        'id': index,
                        'name': "Service ${index + 1}",
                      });
                    },
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Center(
                              child: Container(
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(150),
                                border: Border.all(
                                    width: 0.2, color: AppColor.primaryColor),
                                image: DecorationImage(
                                  image: AssetImage(controller.services[index]),
                                  fit: BoxFit.fill,
                                )),
                          )),
                          Text(
                            "Service ${index + 1}",
                            style: const TextStyle(color: AppColor.secondColor),
                          ),
                        ],
                      ),
                    ),
                  )),
        ],
      ),
    );
  }
}
