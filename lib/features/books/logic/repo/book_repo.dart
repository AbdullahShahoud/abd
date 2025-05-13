import 'package:learn_programtion/core/network/api_error_handler.dart';
import 'package:learn_programtion/core/network/api_result.dart';
import 'package:learn_programtion/core/network/api_service.dart';
import 'package:learn_programtion/features/books/logic/model/book_response.dart';

class BookRepo {
  ApiService _apiService;
  BookRepo(this._apiService);
  Future<ApiResult<BookResponse>> getBook() async {
    try {
      final response = await _apiService.getBook();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler(error));
    }
  }
}
