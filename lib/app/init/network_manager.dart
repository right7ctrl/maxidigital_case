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
        baseUrl: 'https://b5jabr5esqfql36a4vdwqi5u740tnjei.lambda-url.eu-central-1.on.aws',
      );

  NetworkManager._init() {
    dio = Dio(options);
  }
}
