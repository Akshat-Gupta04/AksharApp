import 'dart:convert';
import 'dart:typed_data';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start translation Group Code

class TranslationGroup {
  static String baseUrl = 'https://google-translator9.p.rapidapi.com/';
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
    final ffApiRequestBody = '''
{
  "q": "${q}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'detects',
      apiUrl: '${TranslationGroup.baseUrl}v2/detect',
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
    final ffApiRequestBody = '''
{
    "q":"${q}",
    "source":"${source}",
    "target": "${target}",
    "format": "${format}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'translates',
      apiUrl: '${TranslationGroup.baseUrl}v2',
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
    return ApiManager.instance.makeApiCall(
      callName: 'languages',
      apiUrl: '${TranslationGroup.baseUrl}v2/languages',
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
