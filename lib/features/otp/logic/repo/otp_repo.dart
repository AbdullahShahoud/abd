import 'package:learn_programtion/core/network/api_result.dart';
import 'package:learn_programtion/features/otp/logic/model/otp_response.dart';
import 'package:learn_programtion/features/otp/logic/model/otp_ruqest.dart';

import '../../../../core/network/api_error_handler.dart';
import '../../../../core/network/api_service.dart';

class OtpRepo {
  final ApiService _apiService;
  OtpRepo(this._apiService);
  Future<ApiResult<OtpResponse>> verifc(OtpRuqest otpRuqest) async {
    try {
      final response = await _apiService.veifyEmail(otpRuqest);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler(error));
    }
  }
}
