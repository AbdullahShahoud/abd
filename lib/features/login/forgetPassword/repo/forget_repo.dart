import 'package:dio/dio.dart';
import 'package:learn_programtion/core/network/api_service.dart';
import '../../../../core/network/api_error_handler.dart';
import '../../../../core/network/api_result.dart';
import '../model/forget_password_response.dart';
import '../model/forget_password_ruqest.dart';

class ForgetRepo {
  final ApiService _apiService;
  ForgetRepo(this._apiService);
  Future<ApiResult<ForgetPasswordResponse>> forget(
      FoargetPasswordRuqest foargetPasswordRuqest) async {
    try {
      final response = await _apiService.passwordReset(foargetPasswordRuqest);
      return ApiResult.success(response);
    } on DioError catch (e) {
      return ApiResult.failure(ApiErrorHandler.fromDioError(e));
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.fromGenericError(e));
    }
  }
}
