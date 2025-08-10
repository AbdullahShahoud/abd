import 'package:dio/dio.dart';
import 'package:learn_programtion/core/network/api_error_handler.dart';
import 'package:learn_programtion/core/network/api_result.dart';
import 'package:learn_programtion/core/network/api_service.dart';
import '../model/view_information_respones.dart';

class UserIformationRepo {
  ApiService _apiService;
  UserIformationRepo(this._apiService);
  Future<ApiResult<UserInformation>> getInformation() async {
    try {
      final response = await _apiService.getInformation();
      return ApiResult.success(response);
    } on DioError catch (error) {
      return ApiResult.failure(ApiErrorHandler.fromDioError(error));
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.fromGenericError(error));
    }
  }
}
