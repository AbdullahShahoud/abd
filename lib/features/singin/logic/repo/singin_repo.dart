import 'package:dio/dio.dart';
import 'package:learn_programtion/core/network/api_error_handler.dart';
import 'package:learn_programtion/core/network/api_result.dart';
import 'package:learn_programtion/features/singin/logic/model/singin_reqest.dart';
import 'package:learn_programtion/features/singin/logic/model/singin_response.dart';

import '../../../../core/network/api_service.dart';

class SinginRepo {
  final ApiService _apiService;
  SinginRepo(this._apiService);
  Future<ApiResult<SinginResponse>> Singin(SinginRequest singinRequest) async {
    try {
      final response = await _apiService.signup(singinRequest);
      return ApiResult.success(response);
    } on DioError catch (dioError) {
      print('Dio Error: ${dioError.response?.data}');
      return ApiResult.failure(ApiErrorHandler.fromDioError(dioError));
    } catch (error) {
      print('Unexpected Error: $error');
      return ApiResult.failure(ApiErrorHandler.fromGenericError(error));
    }
  }
}
