import 'package:learn_programtion/core/network/api_error_handler.dart';
import 'package:learn_programtion/core/network/api_result.dart';
import 'package:learn_programtion/core/network/api_service.dart';
import '../model/courses_me_response.dart';

class CoursesMeRepo {
  ApiService _apiService;
  CoursesMeRepo(this._apiService);
  Future<ApiResult<List<CoursesMeResponse>>> getCoursesMe() async {
    try {
      final response = await _apiService.getCoursesMe();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler(error));
    }
  }
}
