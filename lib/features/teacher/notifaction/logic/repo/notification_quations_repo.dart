import 'package:dio/dio.dart';
import 'package:learn_programtion/core/network/api_result.dart';

import '../../../../../core/network/api_error_handler.dart';
import '../../../../../core/network/api_service.dart';
import '../models/notification_quations_response.dart';

class NotificationQautionsRepoTeacher {
  final ApiService _apiService;
  NotificationQautionsRepoTeacher(this._apiService);
  Future<ApiResult<List<NotificationQuationsResponse>>>
      getNotificationQautions() async {
    try {
      final response = await _apiService.getNotificationTeacherQuations();
      return ApiResult.success(response);
    } on DioError catch (error) {
      return ApiResult.failure(ApiErrorHandler.fromDioError(error));
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.fromGenericError(error));
    }
  }
}
