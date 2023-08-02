// import 'package:cloud_firestore/cloud_firestore.dart';
//
import 'response.dart';

//
// final FirebaseFirestore firestore = FirebaseFirestore.instance;
//
class CRUDFirebase {
  static Response response = Response();
  static Future<Response> addData({
    required String collectionName,
    required Map<String, dynamic> data,
  }) async {
//     CollectionReference collectionReference =
//         firestore.collection(collectionName);
//     DocumentReference documentReferencer = collectionReference.doc();
//     await documentReferencer.set(data).whenComplete(() {
//       response.code = 200;
//       response.message = "success";
//       updateData(
//           collectionName: collectionName,
//           docId: documentReferencer.id,
//           data: {'id': documentReferencer.id});
//     }).catchError((e) {
//       response.code = 500;
//       response.message = e;
//     });
//     print(documentReferencer.id);
    return response;
  }
//
//   static Stream<QuerySnapshot> readData({required String collectionName}) {
//     CollectionReference notesItemCollection =
//         firestore.collection(collectionName);
//
//     return notesItemCollection.snapshots();
//   }

  // static Future<(List<QueryDocumentSnapshot<Object?>>, Response)> getData({
  //   required String collectionName,
  // }) async {
  //   CollectionReference collectionReference =
  //   firestore.collection(collectionName);
  //   QuerySnapshot query = await collectionReference.get().whenComplete(() {
  //     response.code = 200;
  //     response.message = "success";
  //   });
  //   if (query.docs.isEmpty) {
  //     response.code = 500;
  //     response.message = "empty";
  //   }
  //   return (query.docs, response);
  // }

//
//   static Future<Response> updateData({
//     required String collectionName,
//     required String docId,
//     required Map<String, dynamic> data,
//   }) async {
//     Response response = Response();
//     CollectionReference collectionReference =
//         firestore.collection(collectionName);
//     DocumentReference documentReferencer = collectionReference.doc(docId);
//
//     await documentReferencer.update(data).whenComplete(() {
//       response.code = 200;
//       response.message = "success";
//     }).catchError((e) {
//       response.code = 500;
//       response.message = e;
//     });
//     return response;
//   }
//
//   static Future<Response> deleteData({
//     required String collectionName,
//     required String docId,
//     required Map<String, dynamic> data,
//   }) async {
//     Response response = Response();
//     CollectionReference collectionReference =
//         firestore.collection(collectionName);
//     DocumentReference documentReferencer = collectionReference.doc(docId);
//
//     await documentReferencer.delete().whenComplete(() {
//       response.code = 200;
//       response.message = "success";
//     }).catchError((e) {
//       response.code = 500;
//       response.message = e;
//     });
//     return response;
//   }
}
