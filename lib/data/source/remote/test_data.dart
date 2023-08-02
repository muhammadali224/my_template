import '../../../core/class/crud.dart';
import '../../../core/class/crud_firebase.dart';
import '../../../core/constant/api_link.dart';

class TestData {
  CRUD crud;

  TestData(this.crud);

  getData() async {
    var response = await crud.postData(AppLink.test, {});
    return response.fold((l) => l, (r) => r);
  }

  addData(String collectionName, Map<String, dynamic> data) async {
    var response =
        await CRUDFirebase.addData(collectionName: collectionName, data: data);
    return response;
  }

  // Future<(List<QueryDocumentSnapshot<Object?>>, Response)> getTask(
  //     String collectionName) async {
  //   var response = await CRUDFirebase.getData(collectionName: collectionName);
  //   return response;
  // }
}
