import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_api/model/exception_model.dart';
import 'package:flutter_api/model/auth/login_model.dart';
import 'package:flutter_api/repository/auth/auth_repository.dart';
import 'package:flutter_api/repository/utils/api_path.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  Dio dio;
  final flutterSecureStorage = const FlutterSecureStorage();

  AuthRepositoryImpl(this.dio);

  @override
  Future<Either<ExceptionModel, LoginModel>> login(Map<String, dynamic> payload) async {
    try {
      final response = await dio.post(ApiPath.LOGIN, data: FormData.fromMap(payload));
      final result = LoginModel.fromJson(response.data);
      await flutterSecureStorage.write(key: 'token', value: result.token);
      await flutterSecureStorage.write(key: 'role', value: result.role);
      return Right(result);
    } catch (e) {
      return Left(ExceptionModel(e.toString()));
    }
  }

  @override
  Future<Either<ExceptionModel, LoginModel>> register(Map<String, dynamic> payload) async {
    try {
      final response = await dio.post(ApiPath.REGISTER, data: FormData.fromMap(payload));
      final result = LoginModel.fromJson(response.data);
      return Right(result);
    } catch (e) {
      return Left(ExceptionModel(e.toString()));
    }
  }
}
