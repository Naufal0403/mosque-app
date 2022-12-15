import 'package:dartz/dartz.dart';
import 'package:flutter_api/model/auth/login_model.dart';
import 'package:flutter_api/model/exception_model.dart';

import '../../model/base_model.dart';

abstract class AuthRepository {
  
  Future<Either<ExceptionModel, LoginModel>> login(Map<String, dynamic> payload);
  Future<Either<ExceptionModel, LoginModel>> register(Map<String, dynamic> payload);

}