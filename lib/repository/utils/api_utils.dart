import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

@module
abstract class ApiUtils {
  @LazySingleton()
  Dio dio() {
    return Dio(
      BaseOptions(
        baseUrl: 'https://demo.demasjid.com/api/',
        connectTimeout: 60 * 1000,
        sendTimeout: 60 * 1000,
        receiveTimeout: 60 * 1000,
      ),
    )..interceptors.addAll([
        PrettyDioLogger(),
      ]);
  }

}
