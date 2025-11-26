import 'package:dio/dio.dart';
import 'package:flutter_shop/constants/index.dart';

class RequestUtils {
  final _dio = Dio();
  RequestUtils() {
    _dio.options.baseUrl = GloablConstants.BASE_URL;
    _dio.options.connectTimeout = Duration(seconds: GloablConstants.TIME_OUT);
    _dio.options.sendTimeout = Duration(seconds: GloablConstants.TIME_OUT);
    _dio.options.receiveTimeout = Duration(seconds: GloablConstants.TIME_OUT);
    _addInterceptors();
  }

  void _addInterceptors() {
    _dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          return handler.next(options);
        },
        onResponse: (response, handler) {
          if (response.statusCode! >= 200 && response.statusCode! < 300) {
            return handler.next(response);
          }
          handler.reject(DioException(requestOptions: response.requestOptions));
        },
        onError: (e, handler) {
          return handler.next(e);
        },
      ),
    );
  }

  get(String url, {Map<String, dynamic>? queryParameters}) {
    return _handleResponse(_dio.get(url, queryParameters: queryParameters));
  }

  _handleResponse(Future<Response<dynamic>> task) async {
    try {
      Response<dynamic> res = await task;
      final data = res.data as Map<String, dynamic>;
      if (data['code'] == GloablConstants.SUCCESS_CODE) {
        return data["result"];
      }
      throw Exception(data["msg"] ?? '数据记载异常');
    } catch (e) {
      throw Exception(e);
    }
  }
}

final dioRuest = RequestUtils();
