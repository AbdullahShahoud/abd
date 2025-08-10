import 'package:dio/dio.dart';
import 'package:learn_programtion/core/network/api_error_handler.dart';
import 'package:learn_programtion/core/network/api_result.dart';
import 'package:learn_programtion/core/network/api_service.dart';
import 'package:learn_programtion/features/teacher/addCourse/logic/model/add_test_response.dart';

import '../model/add_test_ruqest.dart';

class AddTestRepo {
  ApiService _apiService;
  AddTestRepo(this._apiService);
  Future<ApiResult<AddTestResponse>> addtest(
      AddTestRuqest addTestRuqest) async {
    try {
      final response = await _apiService.addTest(addTestRuqest);
      return ApiResult.success(response);
    } on DioError catch (error) {
      return ApiResult.failure(ApiErrorHandler.fromDioError(error));
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.fromGenericError(error));
    }
  }
}
