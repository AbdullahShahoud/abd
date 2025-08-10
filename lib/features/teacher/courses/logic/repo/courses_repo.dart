import 'package:dio/dio.dart';
import 'package:learn_programtion/core/network/api_error_handler.dart';
import 'package:learn_programtion/core/network/api_result.dart';
import 'package:learn_programtion/core/network/api_service.dart';
import '../model/courses_response.dart';

class CoursesTeacherRepo {
  ApiService _apiService;
  CoursesTeacherRepo(this._apiService);
  Future<ApiResult<List<CoursesResponseTc>>> getCoursesTeacher() async {
    try {
      final response = await _apiService.getCoursesTeacher();
      return ApiResult.success(response);
    } on DioError catch (error) {
      return ApiResult.failure(ApiErrorHandler.fromDioError(error));
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.fromGenericError(error));
    }
  }
}
