import 'package:learn_programtion/core/network/api_error_handler.dart';
import 'package:learn_programtion/core/network/api_result.dart';
import 'package:learn_programtion/core/network/api_service.dart';
import 'package:learn_programtion/features/notification/logic/model/notification_response.dart';

class NotificationRepo {
  final ApiService _apiService;
  NotificationRepo(this._apiService);
  Future<ApiResult<NotificationResponse>> getNotification() async {
    try {
      final response = await _apiService.getNotification();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler(error));
    }
  }
}
