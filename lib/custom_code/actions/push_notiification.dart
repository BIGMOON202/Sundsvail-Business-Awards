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

import 'package:firebase_messaging/firebase_messaging.dart';

Future pushNotiification() async {
  // make onsignal notification with user to send notification
// First, get the user's permission to send notifications
  NotificationSettings settings =
      await FirebaseMessaging.instance.getNotificationSettings();
  if (settings.authorizationStatus != AuthorizationStatus.authorized) {
    return null;
  }
  String? fcmToken = await FirebaseMessaging.instance.getToken();
  return fcmToken;
}
