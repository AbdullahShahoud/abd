import 'package:dio/dio.dart';
import 'package:learn_programtion/core/network/api_error_handler.dart';
import 'package:learn_programtion/core/network/api_result.dart';
import 'package:learn_programtion/core/network/api_service.dart';
import 'package:learn_programtion/features/books/logic/model/book_response.dart';

class BookRepo {
  ApiService _apiService;
  BookRepo(this._apiService);
  Future<ApiResult<List<Book>>> getBook() async {
    try {
      final response = await _apiService.getBook();
      print('RRRRRRRRRRRRRREEEEEEEEEEEPPPPPPPOOOOOO');
      return ApiResult.success(response);
    } on DioError catch (e) {
      print('Dio Error: ${e.response?.data}');
      return ApiResult.failure(ApiErrorHandler.fromDioError(e));
    } catch (e) {
      print('Unexpected Error: $e');
      return ApiResult.failure(ApiErrorHandler.fromGenericError(e));
    }
  }
}
