import 'package:learn_programtion/features/profile/logic/model/changEmail/chang_email_response.dart';

import '../../../../core/network/api_error_handler.dart';
import '../../../../core/network/api_result.dart';
import '../../../../core/network/api_service.dart';
import '../model/changEmail/chang_email_request.dart';

class ChangeEmailRepo {
  final ApiService _apiService;
  ChangeEmailRepo(this._apiService);
  Future<ApiResult<ChangeEmailResponse>> changePasseord(
      ChangeEmailRequest changeEmailRequest) async {
    try {
      final respons = await _apiService.changeEmail(changeEmailRequest);
      return ApiResult.success(respons);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler(error));
    }
  }
}
