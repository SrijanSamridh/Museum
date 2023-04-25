// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// import '../../Models/user_model.dart';

// class UserRepository extends GetxController {
//   static UserRepository get to => Get.find();

//   final _db = FirebaseFirestore.instance;

//   createUser(UserModel user) async {
//     await _db
//         .collection('users')
//         .add(user.toJson())
//         .whenComplete(() => Get.snackbar("Success", "Your data has been saved",
//             snackPosition: SnackPosition.BOTTOM,
//             backgroundColor: Colors.green.withOpacity(0.1),
//             colorText: Colors.green))
//         .catchError((error, stackTrace) {
//       Get.snackbar("Error", "Something went wrong",
//           snackPosition: SnackPosition.BOTTOM,
//           backgroundColor: Colors.red.withOpacity(0.1),
//           colorText: Colors.red);
//           print(error.toString());
//     });
//   }
// }
