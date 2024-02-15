import 'package:get/get.dart';

import '../constant/get_box_key.dart';
import '../services/app.service.dart';

translateDatabase(String ar, String en) {
  AppServices myServices = Get.find();
  if (myServices.getBox.read(GetBoxKey.language) == GetBoxKey.arLanguage) {
    return ar;
  } else {
    return en;
  }
}
