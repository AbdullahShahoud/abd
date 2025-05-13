import 'package:dio/dio.dart';

import '../helper/sherdPrefernce.dart';

class DioFactory {
  DioFactory._();

  static Dio? dio;
  static Dio? getDio() {
    Duration timeout = Duration(seconds: 30);
    if (dio == null) {
      dio = Dio();
      dio!
        ..options.connectTimeout = timeout
        ..options.receiveTimeout = timeout;
      addDioHeader();
      // addDioInterceptor();
      return dio;
    } else {
      return dio;
    }
  }

  static void addDioHeader() async {
    dio?.options.headers = {
      'Accept': 'application/json',
      'Authorization': 'jjjjjjjjjjjjjjjjjjjj'
      // '${await SharedPrefHelper.getString('token')
      // }'
    };
  }

  // static void addDioInterceptor() {
  //   dio?.interceptors.add(
  //      PrettyDioLogger(
  //       requestBody: true,
  //       requestHeader: true,
  //       responseHeader: true,
  //     ),
  //   );
  // }
}
