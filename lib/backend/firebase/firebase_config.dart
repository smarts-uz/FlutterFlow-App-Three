import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDVmjIz5GoyXYyKRECA7yAB8WdYgJ6mcOs",
            authDomain: "jhvhmgcvhcvhm.firebaseapp.com",
            projectId: "jhvhmgcvhcvhm",
            storageBucket: "jhvhmgcvhcvhm.appspot.com",
            messagingSenderId: "166168846059",
            appId: "1:166168846059:web:bfc8b18f2b2809f2c1a8ae",
            measurementId: "G-79468PBM32"));
  } else {
    await Firebase.initializeApp();
  }
}
