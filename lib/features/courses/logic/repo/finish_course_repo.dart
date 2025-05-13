import 'package:learn_programtion/features/courses/logic/model/finish_coures_ruqest.dart';
import 'package:learn_programtion/features/courses/logic/model/finish_course_response.dart';

import '../../../../core/network/api_error_handler.dart';
import '../../../../core/network/api_result.dart';
import '../../../../core/network/api_service.dart';

class FinishCourseRepo {
  ApiService _apiService;
  FinishCourseRepo(this._apiService);
  Future<ApiResult<FinishCourseResponse>> finishCourses(
      FinishCourseRuqest finishCourseRuqest) async {
    try {
      final response = await _apiService.finishCourse(finishCourseRuqest);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler(error));
    }
  }
}
