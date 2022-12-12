import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class NetworkManager {
  late Dio dio;
  static NetworkManager? _instance;

  static NetworkManager get instance {
    _instance ??= NetworkManager._init();
    return _instance!;
  }

  BaseOptions get options => BaseOptions(
        sendTimeout: 40000, //40s
        receiveTimeout: 40000, //40s
        contentType: 'application/json',
        baseUrl: 'https://api.yazilimgo.com/step/api/v1',
      );

  NetworkManager._init() {
    dio = Dio(options);
    dio.interceptors.add(AppInterceptor());
  }
}

class AppInterceptor extends InterceptorsWrapper {
  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    debugPrint('${err.stackTrace}');
    handler.next(err);
  }
}
