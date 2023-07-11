import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCj2cjST_Y4eZ_pjUtyGBDquwTVvRgfoO8",
            authDomain: "flutterflowtwo.firebaseapp.com",
            projectId: "flutterflowtwo",
            storageBucket: "flutterflowtwo.appspot.com",
            messagingSenderId: "658620699071",
            appId: "1:658620699071:web:493024be3755aa0a21910a"));
  } else {
    await Firebase.initializeApp();
  }
}
