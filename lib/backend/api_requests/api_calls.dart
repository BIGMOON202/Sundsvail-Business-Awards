import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class LoginCall {
  static Future<ApiCallResponse> call({
    String? ticketHash = '',
    String? fCMToken = '',
  }) async {
    final ffApiRequestBody = '''
{
  "ticket_hash": "$ticketHash",
  "fcm_token": "$fCMToken",
  "appversion": 10
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Login',
      apiUrl: 'https://www.businessawards.se/api/sba/v1/login/',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetArticleCall {
  static Future<ApiCallResponse> call({
    String? ticketHash = '',
    String? slug = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Article',
      apiUrl: 'https://www.businessawards.se/api/sba/v1/article$slug',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'ticket_hash': ticketHash,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
}

class GetNewsCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get News',
      apiUrl: 'https://www.businessawards.se/api/sba/v1/news/',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'appversion': 10,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static dynamic allData(dynamic response) => getJsonField(
        response,
        r'''$''',
      );
  static List? slides(dynamic response) => getJsonField(
        response,
        r'''$.slides''',
        true,
      ) as List?;
  static dynamic appsponsor(dynamic response) => getJsonField(
        response,
        r'''$.appsponsor''',
      );
  static dynamic huvudpartners(dynamic response) => getJsonField(
        response,
        r'''$.huvudpartners''',
      );
}

class GetAwardsCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Awards',
      apiUrl: 'https://www.businessawards.se/api/sba/v1/awards/',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List? awards(dynamic response) => getJsonField(
        response,
        r'''$.awards''',
        true,
      ) as List?;
}

class GetAwardCall {
  static Future<ApiCallResponse> call({
    int? awardId,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Award',
      apiUrl: 'https://www.businessawards.se/api/sba/v1/award/$awardId',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'award_id': awardId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static dynamic award(dynamic response) => getJsonField(
        response,
        r'''$.award''',
      );
}

class GetGuestsCall {
  static Future<ApiCallResponse> call({
    String? ticketHash = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Guests',
      apiUrl: 'https://www.businessawards.se/api/sba/v1/guests',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'ticket_hash': ticketHash,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List? guestGroups(dynamic response) => getJsonField(
        response,
        r'''$.guest_groups''',
        true,
      ) as List?;
}

class GetSpecificGuestCall {
  static Future<ApiCallResponse> call({
    String? slug = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get specific guest',
      apiUrl:
          'https://www.businessawards.se/api/sba/v1/guests/specific/$slug',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'slug': slug,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static dynamic guest(dynamic response) => getJsonField(
        response,
        r'''$.guest''',
      );
}

class GetTableGuestsCall {
  static Future<ApiCallResponse> call({
    String? ticketHash = '',
    int? table,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Table Guests',
      apiUrl: 'https://www.businessawards.se/api/sba/v1/guests',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'ticket_hash': ticketHash,
        'table': table,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetProgramCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Program',
      apiUrl: 'https://www.businessawards.se/api/sba/v1/program',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static dynamic steps(dynamic response) => getJsonField(
        response,
        r'''$.steps''',
      );
}

class GetTableCall {
  static Future<ApiCallResponse> call({
    String? ticketHash = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Table',
      apiUrl: 'https://www.businessawards.se/api/sba/v1/table',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'ticket_hash': ticketHash,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetProfileCall {
  static Future<ApiCallResponse> call({
    String? ticketHash = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Profile',
      apiUrl: 'https://www.businessawards.se/api/sba/v1/profile/',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'ticket_hash': ticketHash,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static dynamic profile(dynamic response) => getJsonField(
        response,
        r'''$.profile''',
      );
}

class ToggleProfileEmailCall {
  static Future<ApiCallResponse> call({
    String? ticketHash = '',
    String? fieldname = '',
    int? newStatus,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Toggle profile email',
      apiUrl: 'https://www.businessawards.se/api/sba/v1/profile/toggle/',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'ticket_hash': ticketHash,
        'fieldname': fieldname,
        'new_status': newStatus,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PostProfileFieldCall {
  static Future<ApiCallResponse> call({
    String? ticketHash = '',
    String? field = '',
    String? value = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Post profile field',
      apiUrl: 'https://www.businessawards.se/api/sba/v1/profile/field/',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'ticket_hash': ticketHash,
        'field': field,
        'value': value,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PostProfilePhotoUploadCall {
  static Future<ApiCallResponse> call({
    String? ticketHash = '',
    FFUploadedFile? file,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Post profile photo upload',
      apiUrl: 'https://www.businessawards.se/api/sba/v1/profile/image/upload/',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'ticket_hash': ticketHash,
        'file': file,
        'do': "upload_image",
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PostProfilePhotoDeleteCall {
  static Future<ApiCallResponse> call({
    String? ticketHash = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Post profile photo delete',
      apiUrl: 'https://www.businessawards.se/api/sba/v1/profile/image/delete/',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'ticket_hash': ticketHash,
        'do': "delete_image",
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PostProfileNameCall {
  static Future<ApiCallResponse> call({
    String? ticketHash = '',
    String? firstname = '',
    String? lastname = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Post profile name',
      apiUrl: 'https://www.businessawards.se/api/sba/v1/profile/name/',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'ticket_hash': ticketHash,
        'firstname': firstname,
        'lastname': lastname,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetSystemTextCall {
  static Future<ApiCallResponse> call({
    String? text = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get System text',
      apiUrl: 'https://www.businessawards.se/api/sba/v1/systemtext',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'text': text,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  if (item is DocumentReference) {
    return item.path;
  }
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
