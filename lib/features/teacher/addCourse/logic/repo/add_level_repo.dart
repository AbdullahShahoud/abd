import 'package:dio/dio.dart';
import 'package:learn_programtion/core/network/api_error_handler.dart';
import 'package:learn_programtion/core/network/api_result.dart';
import 'package:learn_programtion/core/network/api_service.dart';

import '../model/add_level_response.dart';
import '../model/add_level_ruqest.dart';

class AddLevelTeacherRepo {
  ApiService _apiService;
  AddLevelTeacherRepo(this._apiService);
  Future<ApiResult<AddLevelResponse>> addLevelTeacher(
      AddLevelRuqest addLevelRuqest) async {
    try {
      final response = await _apiService.addLevel(addLevelRuqest);
      return ApiResult.success(response);
    } on DioError catch (error) {
      return ApiResult.failure(ApiErrorHandler.fromDioError(error));
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.fromGenericError(error));
    }
  }
}
