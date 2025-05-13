import 'package:learn_programtion/features/courses/logic/model/finish_lesson_response.dart';
import 'package:learn_programtion/features/courses/logic/model/finish_lesson_ruqest.dart';

import '../../../../core/network/api_error_handler.dart';
import '../../../../core/network/api_result.dart';
import '../../../../core/network/api_service.dart';

class FinishLessonRepo {
  ApiService _apiService;
  FinishLessonRepo(this._apiService);
  Future<ApiResult<FinishLessonResponse>> finishLesson(
      FinishLessonRuqest finishLessonRuqest) async {
    try {
      final response = await _apiService.finishLesson(finishLessonRuqest);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler(error));
    }
  }
}
