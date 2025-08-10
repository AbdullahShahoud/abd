import 'package:dio/dio.dart';
import 'package:learn_programtion/core/network/api_error_handler.dart';
import 'package:learn_programtion/core/network/api_result.dart';
import 'package:learn_programtion/core/network/api_service.dart';

import '../model/changePassord/chang_password_request.dart';
import '../model/changePassord/change_password_response.dart';

class ProfileRepoPassword {
  final ApiService _apiService;
  ProfileRepoPassword(this._apiService);
  Future<ApiResult<ChangePasswordResponse>> changePasseord(
      ChangePasswordRequest changePasswordRequest) async {
    try {
      final respons = await _apiService.changePassword(changePasswordRequest);
      return ApiResult.success(respons);
    } on DioError catch (error) {
      return ApiResult.failure(ApiErrorHandler.fromDioError(error));
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.fromGenericError(error));
    }
  }
}
