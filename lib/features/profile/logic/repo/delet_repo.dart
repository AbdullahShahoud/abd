import 'package:learn_programtion/core/network/api_error_handler.dart';
import 'package:learn_programtion/core/network/api_result.dart';
import 'package:learn_programtion/core/network/api_service.dart';

import '../model/delet_user_response.dart';
import '../model/delet_user_ruqest.dart';

class DeletRepo {
  ApiService _apiService;
  DeletRepo(this._apiService);
  Future<ApiResult<UserDeletResponse>> delUser(
      DeletUserRuqest deletUserRuqest) async {
    try {
      final response = await _apiService.deletUser(deletUserRuqest);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler(error));
    }
  }
}
