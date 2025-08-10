import 'package:dio/dio.dart';
import 'package:learn_programtion/features/notification/logic/model/notification_question_response.dart';

import '../../../../core/network/api_error_handler.dart';
import '../../../../core/network/api_result.dart';
import '../../../../core/network/api_service.dart';

class NotificationRepoQuation {
  final ApiService _apiService;
  NotificationRepoQuation(this._apiService);
  Future<ApiResult<List<QuestionAndResponse>>> getNotification() async {
    try {
      final response = await _apiService.getNotificationQuation();
      return ApiResult.success(response);
    } on DioError catch (error) {
      return ApiResult.failure(ApiErrorHandler.fromDioError(error));
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.fromGenericError(error));
    }
  }
}
