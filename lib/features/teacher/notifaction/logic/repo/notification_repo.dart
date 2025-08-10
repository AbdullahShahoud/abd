import 'package:dio/dio.dart';
import 'package:learn_programtion/core/network/api_result.dart';

import '../../../../../core/network/api_error_handler.dart';
import '../../../../../core/network/api_service.dart';
import '../models/notification_response.dart';

class NotificationRepoTeacher {
  final ApiService _apiService;
  NotificationRepoTeacher(this._apiService);
  Future<ApiResult<List<NotificationResponse>>> getNotification() async {
    try {
      final response = await _apiService.getNotificationTeacher();
      return ApiResult.success(response);
    } on DioError catch (error) {
      return ApiResult.failure(ApiErrorHandler.fromDioError(error));
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.fromGenericError(error));
    }
  }
}
