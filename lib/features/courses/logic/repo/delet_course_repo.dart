import 'package:learn_programtion/features/courses/logic/model/delet_course_response.dart';
import 'package:learn_programtion/features/courses/logic/model/delet_course_ruqest.dart';
import '../../../../core/network/api_error_handler.dart';
import '../../../../core/network/api_result.dart';
import '../../../../core/network/api_service.dart';

class DeletCoursenRepo {
  ApiService _apiService;
  DeletCoursenRepo(this._apiService);
  Future<ApiResult<DeletCourseResponse>> deletCourse(
      DeletCourseRuqest deletCourseRuqest) async {
    try {
      final response = await _apiService.deletCourse(deletCourseRuqest);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler(error));
    }
  }
}
