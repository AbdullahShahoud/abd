import 'package:dio/dio.dart';
import 'package:learn_programtion/core/network/api_error_handler.dart';
import 'package:learn_programtion/core/network/api_result.dart';
import 'package:learn_programtion/core/network/api_service.dart';

import '../model/add_coures_response.dart';
import '../model/add_course_ruqest.dart';

class AddCoursesTeacherRepo {
  ApiService _apiService;
  AddCoursesTeacherRepo(this._apiService);
  Future<ApiResult<AddCourseResponse>> addCoursesTeacher(
      AddCourseRuqest addCourseRuqest) async {
    try {
      final response = await _apiService.addCourses(addCourseRuqest);
      return ApiResult.success(response);
    } on DioError catch (error) {
      return ApiResult.failure(ApiErrorHandler.fromDioError(error));
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.fromGenericError(error));
    }
  }
}
