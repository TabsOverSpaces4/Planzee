import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';


class FirebaseServices {
  FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  // ignore: unused_field
  FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;

  String getUserId() {
    return _firebaseAuth.currentUser.uid;
    
  }


}

