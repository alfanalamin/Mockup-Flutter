import 'package:dio/dio.dart';
import 'package:fk_user_agent/fk_user_agent.dart';
import 'package:flutter_application_1/common/configs.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:dio_logger/dio_logger.dart';

class DioClient {
  DioClient();
  Future<Dio> client(String flavor) async {
    final userAgent = await FkUserAgent.getPropertyAsync('userAgent');

    final preferences = await SharedPreferences.getInstance();

    final token = preferences.getString('token');
    var options = BaseOptions(
      baseUrl: flavor == 'dev' ? Configs.baseUrlProd :Configs.baseUrlDev,
      followRedirects: false,
      sendTimeout: 0,
      connectTimeout: 0,
      receiveTimeout: 0,
      validateStatus: (status) => true,
      headers: {
        "authorization": 'Bearer $token',
        'User-Agent': userAgent,
      },
    );
    Dio dio = Dio(options);
    dio.interceptors.add(
      dioLoggerInterceptor,
    );
    return dio;
  }

}