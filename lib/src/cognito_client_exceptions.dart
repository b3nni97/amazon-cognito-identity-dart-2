import 'dart:convert';

import 'package:dio/dio.dart';

class CognitoClientException implements Exception {
  int? statusCode;
  String? code;
  String? name;
  String? message;
  CognitoClientException(
    this.message, {
    this.code,
    this.statusCode,
    this.name,
  });

  @override
  String toString() {
    return 'CognitoClientException{statusCode: $statusCode, code: $code, name: $name, message: $message}';
  }

  CognitoClientException.fromDioException(DioException dioException) {
    Map<String, dynamic> json = jsonDecode(dioException.response?.data);

    statusCode = dioException.response?.statusCode;
    code = json["__type"];
    message = json["message"];
  }
}
