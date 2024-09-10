import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/auth/firebase_auth/auth_util.dart';

bool displayMatchingName(
  String? firstname,
  String? lastname,
  String? search,
) {
  if ((search == null) || (search == "") || (search.isEmpty)) {
    return true;
  } else {
    if ((firstname == null) || (firstname.isEmpty)) {
      firstname = "";
    }

    if ((lastname == null) || (lastname.isEmpty)) {
      lastname = "";
    }

    if ((firstname.toLowerCase().contains(search.toLowerCase())) ||
        (lastname.toLowerCase().contains(search.toLowerCase()))) {
      return true;
    } else {
      return false;
    }
  }
}
