import 'dart:convert';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class GetResponseCall {
  static Future<ApiCallResponse> call({
    String? apiKeyAuth = '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',
    String? prompt = '',
    String? language = '',
  }) async {
    final ffApiRequestBody = '''
{
  "messages": [
    {
      "role": "user",
      "content": "$prompt. Return a response that could be read allowed in a total of about 10-15 seconds in $language (language code)"
    }
  ],
  "model": "gpt-3.5-turbo-0125",
  "max_tokens": 100
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'GetResponse',
      apiUrl: 'https://api.openai.com/v1/completions',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer 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',
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
