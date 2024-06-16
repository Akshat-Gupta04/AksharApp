import 'dart:convert';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start translation Group Code

class TranslationGroup {
  static String getBaseUrl() => 'https://google-translator9.p.rapidapi.com/';
  static Map<String, String> headers = {
    'X-RapidAPI-Key': '4a487d0ecemsh3653b50a9dcfe18p1d05dcjsn04988e5c3e8b',
    'X-RapidAPI-Host': 'google-translator9.p.rapidapi.com',
  };
  static DetectsCall detectsCall = DetectsCall();
  static TranslatesCall translatesCall = TranslatesCall();
  static LanguagesCall languagesCall = LanguagesCall();
}

class DetectsCall {
  Future<ApiCallResponse> call({
    String? q = '',
  }) async {
    final baseUrl = TranslationGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "q": "$q"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'detects',
      apiUrl: '${baseUrl}v2/detect',
      callType: ApiCallType.POST,
      headers: {
        'X-RapidAPI-Key': '4a487d0ecemsh3653b50a9dcfe18p1d05dcjsn04988e5c3e8b',
        'X-RapidAPI-Host': 'google-translator9.p.rapidapi.com',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  String? datadetectionslanguage(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.detections[:][:].language''',
      ));
}

class TranslatesCall {
  Future<ApiCallResponse> call({
    String? q = '',
    String? source = '',
    String? target = '',
    String? format = 'text',
  }) async {
    final baseUrl = TranslationGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
    "q":"$q",
    "source":"$source",
    "target": "$target",
    "format": "$format"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'translates',
      apiUrl: '${baseUrl}v2',
      callType: ApiCallType.POST,
      headers: {
        'X-RapidAPI-Key': '4a487d0ecemsh3653b50a9dcfe18p1d05dcjsn04988e5c3e8b',
        'X-RapidAPI-Host': 'google-translator9.p.rapidapi.com',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  String? datatranslationstranslatedText(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.translations[:].translatedText''',
      ));
}

class LanguagesCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = TranslationGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'languages',
      apiUrl: '${baseUrl}v2/languages',
      callType: ApiCallType.GET,
      headers: {
        'X-RapidAPI-Key': '4a487d0ecemsh3653b50a9dcfe18p1d05dcjsn04988e5c3e8b',
        'X-RapidAPI-Host': 'google-translator9.p.rapidapi.com',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

/// End translation Group Code

/// Start speech to text Group Code

class SpeechToTextGroup {
  static String getBaseUrl() =>
      'https://cloudlabs-text-to-speech.p.rapidapi.com/';
  static Map<String, String> headers = {
    'content-type': 'application/x-www-form-urlencoded',
    'X-RapidAPI-Key': '3c11fb6d17mshd9e05e116b260d8p18745djsn24662b45ff65',
    'X-RapidAPI-Host': 'cloudlabs-text-to-speech.p.rapidapi.com',
  };
}

/// End speech to text Group Code

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
