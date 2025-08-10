import 'package:dio/dio.dart';
import 'package:learn_programtion/core/network/api_service.dart';
import '../../../../core/network/api_error_handler.dart';
import '../../../../core/network/api_result.dart';
import '../model/forget_confirm_ruqest.dart';
import '../model/forget_password_response.dart';

class ForgetConfirmeRepo {
  final ApiService _apiService;
  ForgetConfirmeRepo(this._apiService);
  Future<ApiResult<ForgetPasswordResponse>> forgetConfirme(
      ForgatePasswordConfirmRquest forgatePasswordConfirmRquest) async {
    try {
      final response =
          await _apiService.passwordResetConfirm(forgatePasswordConfirmRquest);
      return ApiResult.success(response);
    } on DioError catch (e) {
      return ApiResult.failure(ApiErrorHandler.fromDioError(e));
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.fromGenericError(e));
    }
  }
}
