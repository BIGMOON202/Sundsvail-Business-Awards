// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart'
    show kIsWeb, defaultTargetPlatform, TargetPlatform;

Future<void> initializeFirebase() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: _getFirebaseOptions(),
  );
}

FirebaseOptions _getFirebaseOptions() {
  if (kIsWeb) {
    return FirebaseOptions(
      apiKey: 'AIzaSyAPLfLA7aTRBWJFaarU-LA3CE1kjFzcP4o',
      appId: '1:186930396296:web:0a790a03d53a2ff016333d',
      messagingSenderId: '186930396296',
      projectId: 'sundsvall-business-awards',
      authDomain: 'sundsvall-business-awards.firebaseapp.com',
      databaseURL: 'https://sundsvall-business-awards.firebaseio.com',
      storageBucket: 'sundsvall-business-awards.appspot.com',
      measurementId: 'G-8FG67CWFJ7',
    );
  }
  switch (defaultTargetPlatform) {
    case TargetPlatform.android:
      return FirebaseOptions(
        apiKey: 'AIzaSyBzN-zvaJhFmGvfRMBIkKm5nWRAARdqNUw',
        appId: '1:186930396296:android:7861cf0685c916e5',
        messagingSenderId: '186930396296',
        projectId: 'sundsvall-business-awards',
        databaseURL: 'https://sundsvall-business-awards.firebaseio.com',
        storageBucket: 'sundsvall-business-awards.appspot.com',
      );
    case TargetPlatform.iOS:
      return FirebaseOptions(
        apiKey: 'AIzaSyBnM35AzGi3YYEyehFGvG_6IA78KK8Lx-s',
        appId: '1:186930396296:ios:93c3fad6d5c484ea16333d',
        messagingSenderId: '186930396296',
        projectId: 'sundsvall-business-awards',
        databaseURL: 'https://sundsvall-business-awards.firebaseio.com',
        storageBucket: 'sundsvall-business-awards.appspot.com',
        iosBundleId: 'com.digiling.sba',
      );
    default:
      throw UnsupportedError(
        'FirebaseOptions are not supported for this platform.',
      );
  }
}
