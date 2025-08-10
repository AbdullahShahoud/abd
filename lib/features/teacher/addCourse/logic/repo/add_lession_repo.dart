import 'package:dio/dio.dart';
import 'package:learn_programtion/core/network/api_error_handler.dart';
import 'package:learn_programtion/core/network/api_result.dart';
import 'package:learn_programtion/core/network/api_service.dart';

import '../model/add_lession_ruqest.dart';
import '../model/add_response_lession.dart';

class AddLessionTeacherRepo {
  ApiService _apiService;
  AddLessionTeacherRepo(this._apiService);
  Future<ApiResult<AddLessionResponse>> addLessionTeacher(
      AddLessionRuqest addLessionRuqest) async {
    try {
      final response = await _apiService.addLession(addLessionRuqest);
      return ApiResult.success(response);
    } on DioError catch (error) {
      return ApiResult.failure(ApiErrorHandler.fromDioError(error));
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.fromGenericError(error));
    }
  }
}
