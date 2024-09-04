// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class TicketStruct extends FFFirebaseStruct {
  TicketStruct({
    String? firstname,
    String? lastname,
    String? email,
    String? year,
    String? org,
    String? place,
    String? time,
    String? invitedBy,
    String? ticketHash,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _firstname = firstname,
        _lastname = lastname,
        _email = email,
        _year = year,
        _org = org,
        _place = place,
        _time = time,
        _invitedBy = invitedBy,
        _ticketHash = ticketHash,
        super(firestoreUtilData);

  // "firstname" field.
  String? _firstname;
  String get firstname => _firstname ?? '';
  set firstname(String? val) => _firstname = val;

  bool hasFirstname() => _firstname != null;

  // "lastname" field.
  String? _lastname;
  String get lastname => _lastname ?? '';
  set lastname(String? val) => _lastname = val;

  bool hasLastname() => _lastname != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;

  bool hasEmail() => _email != null;

  // "year" field.
  String? _year;
  String get year => _year ?? '';
  set year(String? val) => _year = val;

  bool hasYear() => _year != null;

  // "org" field.
  String? _org;
  String get org => _org ?? '';
  set org(String? val) => _org = val;

  bool hasOrg() => _org != null;

  // "place" field.
  String? _place;
  String get place => _place ?? '';
  set place(String? val) => _place = val;

  bool hasPlace() => _place != null;

  // "time" field.
  String? _time;
  String get time => _time ?? '';
  set time(String? val) => _time = val;

  bool hasTime() => _time != null;

  // "invited_by" field.
  String? _invitedBy;
  String get invitedBy => _invitedBy ?? '';
  set invitedBy(String? val) => _invitedBy = val;

  bool hasInvitedBy() => _invitedBy != null;

  // "ticket_hash" field.
  String? _ticketHash;
  String get ticketHash => _ticketHash ?? '';
  set ticketHash(String? val) => _ticketHash = val;

  bool hasTicketHash() => _ticketHash != null;

  static TicketStruct fromMap(Map<String, dynamic> data) => TicketStruct(
        firstname: data['firstname'] as String?,
        lastname: data['lastname'] as String?,
        email: data['email'] as String?,
        year: data['year'] as String?,
        org: data['org'] as String?,
        place: data['place'] as String?,
        time: data['time'] as String?,
        invitedBy: data['invited_by'] as String?,
        ticketHash: data['ticket_hash'] as String?,
      );

  static TicketStruct? maybeFromMap(dynamic data) =>
      data is Map ? TicketStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'firstname': _firstname,
        'lastname': _lastname,
        'email': _email,
        'year': _year,
        'org': _org,
        'place': _place,
        'time': _time,
        'invited_by': _invitedBy,
        'ticket_hash': _ticketHash,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'firstname': serializeParam(
          _firstname,
          ParamType.String,
        ),
        'lastname': serializeParam(
          _lastname,
          ParamType.String,
        ),
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'year': serializeParam(
          _year,
          ParamType.String,
        ),
        'org': serializeParam(
          _org,
          ParamType.String,
        ),
        'place': serializeParam(
          _place,
          ParamType.String,
        ),
        'time': serializeParam(
          _time,
          ParamType.String,
        ),
        'invited_by': serializeParam(
          _invitedBy,
          ParamType.String,
        ),
        'ticket_hash': serializeParam(
          _ticketHash,
          ParamType.String,
        ),
      }.withoutNulls;

  static TicketStruct fromSerializableMap(Map<String, dynamic> data) =>
      TicketStruct(
        firstname: deserializeParam(
          data['firstname'],
          ParamType.String,
          false,
        ),
        lastname: deserializeParam(
          data['lastname'],
          ParamType.String,
          false,
        ),
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
        year: deserializeParam(
          data['year'],
          ParamType.String,
          false,
        ),
        org: deserializeParam(
          data['org'],
          ParamType.String,
          false,
        ),
        place: deserializeParam(
          data['place'],
          ParamType.String,
          false,
        ),
        time: deserializeParam(
          data['time'],
          ParamType.String,
          false,
        ),
        invitedBy: deserializeParam(
          data['invited_by'],
          ParamType.String,
          false,
        ),
        ticketHash: deserializeParam(
          data['ticket_hash'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'TicketStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TicketStruct &&
        firstname == other.firstname &&
        lastname == other.lastname &&
        email == other.email &&
        year == other.year &&
        org == other.org &&
        place == other.place &&
        time == other.time &&
        invitedBy == other.invitedBy &&
        ticketHash == other.ticketHash;
  }

  @override
  int get hashCode => const ListEquality().hash([
        firstname,
        lastname,
        email,
        year,
        org,
        place,
        time,
        invitedBy,
        ticketHash
      ]);
}

TicketStruct createTicketStruct({
  String? firstname,
  String? lastname,
  String? email,
  String? year,
  String? org,
  String? place,
  String? time,
  String? invitedBy,
  String? ticketHash,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    TicketStruct(
      firstname: firstname,
      lastname: lastname,
      email: email,
      year: year,
      org: org,
      place: place,
      time: time,
      invitedBy: invitedBy,
      ticketHash: ticketHash,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

TicketStruct? updateTicketStruct(
  TicketStruct? ticket, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    ticket
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addTicketStructData(
  Map<String, dynamic> firestoreData,
  TicketStruct? ticket,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (ticket == null) {
    return;
  }
  if (ticket.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && ticket.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final ticketData = getTicketFirestoreData(ticket, forFieldValue);
  final nestedData = ticketData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = ticket.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getTicketFirestoreData(
  TicketStruct? ticket, [
  bool forFieldValue = false,
]) {
  if (ticket == null) {
    return {};
  }
  final firestoreData = mapToFirestore(ticket.toMap());

  // Add any Firestore field values
  ticket.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getTicketListFirestoreData(
  List<TicketStruct>? tickets,
) =>
    tickets?.map((e) => getTicketFirestoreData(e, true)).toList() ?? [];
