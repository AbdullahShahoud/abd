import 'package:learn_programtion/core/network/api_service.dart';
import 'package:learn_programtion/features/login/logic/model/login_request.dart';
import 'package:learn_programtion/features/login/logic/model/login_response.dart';

import '../../../../core/network/api_error_handler.dart';
import '../../../../core/network/api_result.dart';

class LoginRepo {
  final ApiService _apiService;
  LoginRepo(this._apiService);
  Future<ApiResult<LoginResponse>> login(LoginRequest loginRequest) async {
    try {
      final response = await _apiService.login(loginRequest);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler(error));
    }
  }
}
