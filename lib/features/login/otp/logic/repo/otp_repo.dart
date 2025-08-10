import 'package:dio/dio.dart';
import 'package:learn_programtion/core/network/api_result.dart';
import '../../../../../core/network/api_error_handler.dart';
import '../../../../../core/network/api_service.dart';
import '../model/otp_response.dart';
import '../model/otp_ruqest.dart';

class OtpRepoLogin {
  final ApiService _apiService;
  OtpRepoLogin(this._apiService);
  Future<ApiResult<OtpResponseLogin>> verifLogin(
      OtpRuqestLogin otpRuqestLogin) async {
    try {
      final response = await _apiService.veifyEmailLogin(otpRuqestLogin);
      return ApiResult.success(response);
    } on DioError catch (e) {
      return ApiResult.failure(ApiErrorHandler.fromDioError(e));
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.fromGenericError(e));
    }
  }
}
