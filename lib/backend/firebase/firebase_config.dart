import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyC7OC0rTkRRSh2Q-qEM_hVbnBdpy5in_Ak",
            authDomain: "flutterflowtesting-5ce1e.firebaseapp.com",
            projectId: "flutterflowtesting-5ce1e",
            storageBucket: "flutterflowtesting-5ce1e.appspot.com",
            messagingSenderId: "730009576757",
            appId: "1:730009576757:web:aa09ada528495dcf6ad87c",
            measurementId: "G-KE4LHGML95"));
  } else {
    await Firebase.initializeApp();
  }
}
