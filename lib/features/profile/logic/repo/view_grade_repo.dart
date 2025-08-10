import 'package:dio/dio.dart';
import 'package:learn_programtion/core/network/api_error_handler.dart';
import 'package:learn_programtion/core/network/api_result.dart';

import '../../../../core/network/api_service.dart';
import '../model/viewGrade/view_grade.dart';

class ViewGradeRepo {
  ApiService _apiService;
  ViewGradeRepo(this._apiService);
  Future<ApiResult<GradeRespons>> getViewGrade() async {
    try {
      final response = await _apiService.getView();
      return ApiResult.success(response);
    } on DioError catch (error) {
      return ApiResult.failure(ApiErrorHandler.fromDioError(error));
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.fromGenericError(error));
    }
  }
}
