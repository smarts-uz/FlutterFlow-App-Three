import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class LoginCall {
  static Future<ApiCallResponse> call({
    String? scope = '',
    String? grantType = '',
    String? username = '',
    String? password = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'login',
      apiUrl:
          'https://dev-457931.okta.com/oauth2/aushd4c95QtFHsfWt4x6/v1/token',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'scope': scope,
        'grant_type': grantType,
        'username': username,
        'password': password,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetPassangersCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    int? page,
    int? size,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'getPassangers',
      apiUrl: 'https://api.instantwebtools.net/v2/passenger?page=0&size=10',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer${authToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetPassangerDetailCall {
  static Future<ApiCallResponse> call({
    String? id = '',
    String? authToken = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'getPassangerDetail',
      apiUrl:
          'https://api.instantwebtools.net/v2/passenger/6332e94ef699ea26812b7fb5',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer${authToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class UpdatePassangetDetailCall {
  static Future<ApiCallResponse> call({
    String? id = '',
    String? authToken = '',
    String? name = '',
  }) {
    final body = '''
{
   "name": "name"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'updatePassangetDetail',
      apiUrl:
          'https://api.instantwebtools.net/v2/passenger/6332e94ef699ea26812b7fb5',
      callType: ApiCallType.PATCH,
      headers: {
        'Authorization': 'Bearer${authToken}',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class DeletePassangerCall {
  static Future<ApiCallResponse> call({
    String? id = '',
    String? authToken = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'deletePassanger',
      apiUrl:
          'https://api.instantwebtools.net/v2/passenger/6332e94ef699ea26812b7fb5',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer${authToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
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

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
