import 'dart:convert';

import 'package:dio/dio.dart';

import 'cognito_client_exceptions.dart';

class Client {
  String? _service;
  String _userAgent = 'aws-amplify/0.0.x dart';
  String? _region;
  late String endpoint;
  late Dio _client;

  Client({
    String? endpoint,
    String? region,
    String service = 'AWSCognitoIdentityProviderService',
    Dio? client,
    String? userAgent,
  }) {
    _region = region;
    _service = service;
    _userAgent = userAgent ?? _userAgent;
    this.endpoint = endpoint ?? 'https://cognito-idp.$_region.amazonaws.com/';
    _client = client ?? Dio();
  }

  /// Makes requests on AWS API service provider
  dynamic request(String operation, Map<String, dynamic> params,
      {String? endpoint, String? service}) async {
    final endpointReq = endpoint ?? this.endpoint;
    final targetService = service ?? _service;
    final body = json.encode(params);

    final headersReq = <String, String>{
      'Content-Type': 'application/x-amz-json-1.1',
      'X-Amz-Target': '$targetService.$operation',
      'X-Amz-User-Agent': _userAgent,
    };

    Response response;
    try {
      response = await _client.post(
        endpointReq,
        options: Options(headers: headersReq),
        data: body,
      );
    } catch (e) {
      if (e.toString().contains('Failed host lookup:')) {
        throw CognitoClientException(
          'SocketException',
          code: 'NetworkError',
        );
      }

      if (e is DioException) {
        throw CognitoClientException.fromDioException(e);
      }

      throw CognitoClientException('Unknown Error', code: 'Unknown error');
    }

    dynamic data;

    try {
      data = json.decode(response.data);
    } catch (_) {
      // expect json
    }

    if (response.statusCode != null &&
        (response.statusCode! < 200 || response.statusCode! > 299)) {
      var errorType = 'UnknownError';
      for (final header in response.headers.map.keys) {
        if (header.toLowerCase() == 'x-amzn-errortype') {
          errorType = response.headers[header]![0].split(':')[0];
          break;
        }
      }
      if (data == null) {
        throw CognitoClientException(
          'Cognito client request error with unknown message',
          code: errorType,
          name: errorType,
          statusCode: response.statusCode,
        );
      }
      final String? dataType = data['__type'];
      final String? dataCode = data['code'];
      final code = (dataType ?? dataCode ?? errorType).split('#').removeLast();
      throw CognitoClientException(
        data['message'] ?? 'Cognito client request error with unknown message',
        code: code,
        name: code,
        statusCode: response.statusCode,
      );
    }
    return data;
  }
}
