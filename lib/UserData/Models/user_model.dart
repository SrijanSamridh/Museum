import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Registions {
  User? user;
  String userId = "";
  String exibitionPlace = "";
  int visitorsCount = 0;
  int phoneNumber = 0;
  String day = "";
  String timeSlot = "";
  String date = "";
  Timestamp createdAt = Timestamp.now();

  Registions(){
    user = FirebaseAuth.instance.currentUser;
    userId = user?.uid ?? "";
  }

  Future<Registions> getData() async {
    if (user?.uid == null) {
      return this;
    }
    DocumentSnapshot documentSnapshot = await FirebaseFirestore.instance
        .collection('registrations')
        .doc(user?.uid)
        .get();
    if (!documentSnapshot.exists) {
      return this;
    }
    Map? data = documentSnapshot.data() as Map?;
    userId = data?['userId'] ?? "";
    visitorsCount = data?['visitorsCount'] ?? 0;
    exibitionPlace = data?['exibitionPlace'] ?? "";
    date = data?['date'] ?? "";
    createdAt = data?['createdAt'] ?? DateTime.now();
    phoneNumber = data?['phoneNumber'] ?? 0;
    day = data?['day'] ?? "";
    timeSlot = data?['timeSlot'] ?? "";
    return this;
  }

  Future<Registions> setData({
    String? newUserId,
    String? newExibitionPlace,
    int? newVisitorsCount,
    String? newDate,
    int? newPhoneNumber,
    String? newDay,
    String? newTimeSlot,
  }) async {
    await getData();
    if (user?.uid == null) {
      return this;
    }
    userId = newUserId ?? userId;
    exibitionPlace = newExibitionPlace ?? exibitionPlace;
    visitorsCount = newVisitorsCount ?? visitorsCount;
    date = newDate ?? date;
    phoneNumber = newPhoneNumber ?? phoneNumber;
    day = newDay ?? day;
    timeSlot = newTimeSlot ?? timeSlot;
    await FirebaseFirestore.instance.collection('registrations').doc(user?.uid).set({
      'userId': userId,
      'exibitionPlace': exibitionPlace,
      'visitorsCount': visitorsCount,
      'date': date,
      'createdAt': createdAt,
      'phoneNumber': phoneNumber,
      'day': day,
      'timeSlot': timeSlot,
    });
    return this;
  }
}
