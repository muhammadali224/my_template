import 'package:get/get.dart';

import '../core/class/crud.dart';

class InitBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(CRUD());
    // Get.put(CRUDFirebase());
  }
}
