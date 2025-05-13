import 'package:learn_programtion/features/courses/logic/model/check_course_response.dart';
import 'package:learn_programtion/features/courses/logic/model/check_course_ruqest.dart';

import '../../../../core/network/api_error_handler.dart';
import '../../../../core/network/api_result.dart';
import '../../../../core/network/api_service.dart';

class CheckCourseRepo {
  ApiService _apiService;
  CheckCourseRepo(this._apiService);
  Future<ApiResult<CheckCourseResponse>> checkCourses(
      CheckCourseRuqest checkCourseRuqest) async {
    try {
      final response = await _apiService.checkCourse(checkCourseRuqest);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler(error));
    }
  }
}
