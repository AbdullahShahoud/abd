import 'package:dio/dio.dart';

import '../helper/sherdPrefernce.dart';

class DioFactory {
  DioFactory._();
  static final DioFactory _instance = DioFactory._();
  factory DioFactory() => _instance;

  static Dio? _dio;

  static Future<Dio> getDio() async {
    if (_dio == null) {
      _dio = Dio()
        ..options = BaseOptions(
          connectTimeout: Duration(seconds: 30),
          receiveTimeout: Duration(seconds: 30),
          sendTimeout: const Duration(seconds: 10),
        );

      await _addDioHeader();
      _addInterceptor();
    }
    return _dio!;
  }

  static Future<void> _addDioHeader() async {
    String? token = await SharedPrefHelper.getString('token');
    _dio?.options.headers = {
      'Content-Type': 'application/json',
      'Accept': '*/*',
      if (token != null) 'Authorization': 'Bearer $token',
    };
  }

  static void _addInterceptor() {
    _dio?.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          print("🔵 Request:");
          print("➡️ URL: ${options.uri}");
          print("➡️ Method: ${options.method}");
          print("➡️ Headers: ${options.headers}");
          print("➡️ Body: ${options.data}");
          handler.next(options); // استمر في الطلب
        },
        onResponse: (response, handler) {
          print("🟢 Response:");
          print("✅ Status Code: ${response.statusCode}");
          print("✅ Data: ${response.data}");
          handler.next(response);
        },
        onError: (DioError e, handler) {
          print("🔴 Error:");
          print("❌ Message: ${e.message}");
          if (e.response != null) {
            print("❌ Status Code: ${e.response?.statusCode}");
            print("❌ Data: ${e.response?.data}");
          }
          handler.next(e);
        },
      ),
    );
  }
}
