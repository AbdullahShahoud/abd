import 'dart:io';

import 'package:dio/dio.dart';

class ApiErrorHandler {
  final String errorMessage;
  final int? statusCode;
  final dynamic errorData;

  ApiErrorHandler({
    required this.errorMessage,
    this.statusCode,
    this.errorData,
  });

  factory ApiErrorHandler.fromDioError(DioError dioError) {
    return ApiErrorHandler(
      errorMessage: dioError.response?.data['message'] ?? dioError.message,
      statusCode: dioError.response?.statusCode,
      errorData: dioError.response?.data,
    );
  }

  factory ApiErrorHandler.fromGenericError(dynamic error) {
    if (error is SocketException) {
      return ApiErrorHandler(errorMessage: "No Internet Connection");
    } else {
      return ApiErrorHandler(errorMessage: error.toString());
    }
  }

  @override
  String toString() => errorMessage;
}
