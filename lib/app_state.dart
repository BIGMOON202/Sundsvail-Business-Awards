import 'package:flutter/material.dart';
import 'flutter_flow/request_manager.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _ticketHash = prefs.getString('ff_ticketHash') ?? _ticketHash;
    });
    _safeInit(() {
      if (prefs.containsKey('ff_activeTicket')) {
        try {
          final serializedData = prefs.getString('ff_activeTicket') ?? '{}';
          _activeTicket =
              TicketStruct.fromSerializableMap(jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _ticketHash = '';
  String get ticketHash => _ticketHash;
  set ticketHash(String value) {
    _ticketHash = value;
    prefs.setString('ff_ticketHash', value);
  }

  String _claimedTicketHash = '';
  String get claimedTicketHash => _claimedTicketHash;
  set claimedTicketHash(String value) {
    _claimedTicketHash = value;
  }

  TicketStruct _activeTicket = TicketStruct();
  TicketStruct get activeTicket => _activeTicket;
  set activeTicket(TicketStruct value) {
    _activeTicket = value;
    prefs.setString('ff_activeTicket', value.serialize());
  }

  void updateActiveTicketStruct(Function(TicketStruct) updateFn) {
    updateFn(_activeTicket);
    prefs.setString('ff_activeTicket', _activeTicket.serialize());
  }

  String _FCMToken = '';
  String get FCMToken => _FCMToken;
  set FCMToken(String value) {
    _FCMToken = value;
  }

  String _serverKey =
      'AAAAK4XrfIg:APA91bE05XDZW7gVFT2_pvr9VDbNtWDD-rnYFM06NvhekKljDV3_ORa3zWMdySMvX21KzAuLnpZhRM2GRiXop7VOn141IAqWpBBv75GAqYOHu3ksDidnQcQ8MvF381gpfG_E-QqkdAPZdbqquXoUXoO718QL8FXy8g';
  String get serverKey => _serverKey;
  set serverKey(String value) {
    _serverKey = value;
  }

  final _newsManager = FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> news({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _newsManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearNewsCache() => _newsManager.clear();
  void clearNewsCacheKey(String? uniqueKey) =>
      _newsManager.clearRequest(uniqueKey);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
