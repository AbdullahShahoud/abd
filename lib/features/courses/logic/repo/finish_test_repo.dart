import 'package:learn_programtion/core/network/api_result.dart';
import 'package:learn_programtion/features/courses/logic/model/finish_test_request.dart';
import 'package:learn_programtion/features/courses/logic/model/finish_test_response.dart';

import '../../../../core/network/api_error_handler.dart';
import '../../../../core/network/api_service.dart';

class FinishTestRepo {
  ApiService _apiService;
  FinishTestRepo(this._apiService);
  Future<ApiResult<FinishTestResponse>> finishTest(
      FinishedTestRuqest finishedTestRuqest) async {
    try {
      final response = await _apiService.finishedTest(finishedTestRuqest);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler(error));
    }
  }
}
