import 'package:get/get.dart';

class ServicesController extends GetxController {
  late int id;
  late String name;

  @override
  void onInit() {
    id = Get.arguments['id'];
    name = Get.arguments['name'];

    super.onInit();
  }
}
