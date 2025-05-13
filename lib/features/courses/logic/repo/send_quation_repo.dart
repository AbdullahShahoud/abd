import 'package:learn_programtion/features/courses/logic/model/send_qaustion_request.dart';
import 'package:learn_programtion/features/courses/logic/model/send_qaustion_response.dart';

import '../../../../core/network/api_error_handler.dart';
import '../../../../core/network/api_result.dart';
import '../../../../core/network/api_service.dart';

class SendQuationsRepo {
  ApiService _apiService;
  SendQuationsRepo(this._apiService);
  Future<ApiResult<SendQautionReesponse>> sendQuation(
      SendQautionsRuqest sendQautionsRuqest) async {
    try {
      final response = await _apiService.sendQautions(sendQautionsRuqest);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler(error));
    }
  }
}
