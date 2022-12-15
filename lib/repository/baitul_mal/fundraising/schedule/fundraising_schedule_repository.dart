import 'package:dartz/dartz.dart';
import 'package:flutter_api/model/base_model.dart';
import 'package:flutter_api/model/exception_model.dart';
import 'package:flutter_api/model/fundraising/schedule/schedule_fundraising_model.dart';

abstract class FundraisingScheduleRepository {
  Future<Either<ExceptionModel, List<ScheduleFundraisingModel>>> getAllFundraisingSchedule();
  Future<Either<ExceptionModel, BaseModel>> addFundraisingSchedule(Map<String, dynamic> payload);
  Future<Either<ExceptionModel, BaseModel>> updateFundraisingSchedule(int id, Map<String, dynamic> payload);
  Future<Either<ExceptionModel, BaseModel>> deleteFundraisingSchedule(int id);
}