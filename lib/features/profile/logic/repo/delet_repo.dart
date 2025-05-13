import 'package:learn_programtion/core/network/api_error_handler.dart';
import 'package:learn_programtion/core/network/api_result.dart';
import 'package:learn_programtion/core/network/api_service.dart';

import '../model/delet_user_response.dart';

class DeletRepo {
  ApiService _apiService;
  DeletRepo(this._apiService);
  Future<ApiResult<UserDeletResponse>> delUser() async {
    try {
      final response = await _apiService.deletUser();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler(error));
    }
  }
}
