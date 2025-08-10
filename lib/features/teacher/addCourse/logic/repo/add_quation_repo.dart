import 'package:dio/dio.dart';
import 'package:learn_programtion/core/network/api_error_handler.dart';
import 'package:learn_programtion/core/network/api_result.dart';
import 'package:learn_programtion/core/network/api_service.dart';

import '../model/add_quation_ruqest.dart';
import '../model/add_quations_response.dart';

class AddQuationRepo {
  ApiService _apiService;
  AddQuationRepo(this._apiService);
  Future<ApiResult<AddQuationResponse>> addQuation(
      List<QuationRuqest> quationRuqest) async {
    try {
      final response = await _apiService.addQuations(quationRuqest);
      return ApiResult.success(response);
    } on DioError catch (error) {
      return ApiResult.failure(ApiErrorHandler.fromDioError(error));
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.fromGenericError(error));
    }
  }
}
