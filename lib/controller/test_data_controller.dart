// import 'package:get/get.dart';
//
// import '../core/class/status_request.dart';
// import '../core/function/handling_data_controller.dart';
// import '../data/source/remote/test_data.dart';
//
// class TestController extends GetxController {
//   // TestData testData = TestData(Get.find());
//   List data = [];
//   StatusRequest statusRequest = StatusRequest.none;
//
//   getData() async {
//     statusRequest = StatusRequest.loading;
//     update();
//     var response = await testData.getData();
//     statusRequest = handlingData(response);
//     if (StatusRequest.success == statusRequest) {
//       if (response['status'] == 'success') {
//         data.addAll(response['data']);
//       } else {
//         statusRequest = StatusRequest.failed;
//       }
//     }
//     update();
//   }
//
//   // addFirebaseData() async {
//   //   // if (formKey.currentState!.validate()) {
//   //   statusRequest = StatusRequest.loading;
//   //   update();
//   //
//   //   var response = await testData.addData("limits", {});
//   //   statusRequest = handlingFirebaseData(response);
//   //   if (StatusRequest.success == statusRequest) {
//   //     print("object");
//   //   }
//   //   update();
//   //   // }
//   // }
//
//   @override
//   void onInit() {
//     getData();
//     super.onInit();
//   }
// }
