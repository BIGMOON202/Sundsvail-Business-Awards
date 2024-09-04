import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyAPLfLA7aTRBWJFaarU-LA3CE1kjFzcP4o",
            authDomain: "sundsvall-business-awards.firebaseapp.com",
            projectId: "sundsvall-business-awards",
            storageBucket: "sundsvall-business-awards.appspot.com",
            messagingSenderId: "186930396296",
            appId: "1:186930396296:web:0a790a03d53a2ff016333d",
            measurementId: "G-8FG67CWFJ7"));
  } else {
    await Firebase.initializeApp();
  }
}
