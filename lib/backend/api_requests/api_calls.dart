import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class GetActivityCall {
  static Future<ApiCallResponse> call({
    String? activity = '',
    String? type = '',
    int? participants,
    double? price,
    String? link = '',
    String? key = '',
    double? accessibility,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'getActivity',
      apiUrl: 'https://www.boredapi.com/api/activity',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'participants1': "1",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic activity(dynamic response) => getJsonField(
        response,
        r'''$.activity''',
      );
}

class GetActivitytwoCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'getActivitytwo',
      apiUrl: 'https://www.boredapi.com/api/activity/',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'participants': 2,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic activity(dynamic response) => getJsonField(
        response,
        r'''$.activity''',
      );
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

String _serializeJson(dynamic jsonVar) {
  jsonVar ??= {};
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return '{}';
  }
}
