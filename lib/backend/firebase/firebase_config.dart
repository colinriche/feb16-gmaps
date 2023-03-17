import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBD5qyonPcjgvzyTRNSqHw6N92TrY0SzxM",
            authDomain: "deliverymap-68a7c.firebaseapp.com",
            projectId: "deliverymap-68a7c",
            storageBucket: "deliverymap-68a7c.appspot.com",
            messagingSenderId: "719501512621",
            appId: "1:719501512621:web:84653acb2ac65cedda1b24",
            measurementId: "G-E3PM6Z6VVH"));
  } else {
    await Firebase.initializeApp();
  }
}
