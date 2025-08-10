import 'package:dio/dio.dart';
import 'package:learn_programtion/core/network/api_error_handler.dart';
import 'package:learn_programtion/core/network/api_result.dart';
import 'package:learn_programtion/core/network/api_service.dart';
import 'package:learn_programtion/features/notification/logic/model/notification_response.dart';

class NotificationRepo {
  final ApiService _apiService;
  NotificationRepo(this._apiService);
  Future<ApiResult<List<NotificationAlertItem>>> getNotification() async {
    try {
      final response = await _apiService.getNotificationAlert();
      return ApiResult.success(response);
    } on DioError catch (error) {
      return ApiResult.failure(ApiErrorHandler.fromDioError(error));
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.fromGenericError(error));
    }
  }
}
