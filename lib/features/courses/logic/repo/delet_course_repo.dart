import 'package:dio/dio.dart';
import 'package:learn_programtion/features/courses/logic/model/deleteCourse/delet_course_response.dart';
import 'package:learn_programtion/features/courses/logic/model/deleteCourse/delet_course_ruqest.dart';
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
    } on DioError catch (error) {
      return ApiResult.failure(ApiErrorHandler.fromDioError(error));
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.fromGenericError(error));
    }
  }
}
