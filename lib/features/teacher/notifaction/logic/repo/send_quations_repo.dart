import 'package:dio/dio.dart';
import 'package:learn_programtion/core/network/api_result.dart';

import '../../../../../core/network/api_error_handler.dart';
import '../../../../../core/network/api_service.dart';
import '../models/qautions_request.dart';

class SendQuationsRepoTC {
  final ApiService _apiService;
  SendQuationsRepoTC(this._apiService);
  Future<ApiResult<void>> sendQuation(QuationsRequest quationsRequest) async {
    try {
      final response = await _apiService.sendQuationsTeacher(quationsRequest);
      return ApiResult.success(response);
    } on DioError catch (error) {
      return ApiResult.failure(ApiErrorHandler.fromDioError(error));
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.fromGenericError(error));
    }
  }
}
