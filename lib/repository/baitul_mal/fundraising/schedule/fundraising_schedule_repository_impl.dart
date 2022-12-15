import 'package:dio/dio.dart';
import 'package:flutter_api/model/fundraising/schedule/schedule_fundraising_model.dart';
import 'package:flutter_api/model/exception_model.dart';
import 'package:flutter_api/model/base_model.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_api/repository/baitul_mal/fundraising/schedule/fundraising_schedule_repository.dart';
import 'package:flutter_api/repository/utils/api_path.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: FundraisingScheduleRepository)
class FundraisingScheduleRepositoryImpl implements FundraisingScheduleRepository {
  Dio dio;
   final flutterSecureStorage = const FlutterSecureStorage();

  FundraisingScheduleRepositoryImpl(this.dio);

  @override
  Future<Either<ExceptionModel, BaseModel>> addFundraisingSchedule(Map<String, dynamic> payload) async {
    final token = await flutterSecureStorage.read(key: 'token');

    dio.options.headers = {'Authorization': 'Bearer $token', 'Accept': 'application/json'};

    try {
      await dio.post(
        ApiPath.CREATE_FUNDRAISING_SCHEDULE,
        data: {
          "jadwal_durasi": "string",
          "jadwal_mulai": "2022-09-03",
          "jadwal_akhir": "2022-09-03",
          "target_dana": 0,
        },
      );
      return Right(BaseModel());
    } catch (e) {
      return Left(ExceptionModel(e.toString()));
    }
  }

  @override
  Future<Either<ExceptionModel, BaseModel>> deleteFundraisingSchedule(int id) async {
    throw Exception();
  }

  @override
  Future<Either<ExceptionModel, List<ScheduleFundraisingModel>>> getAllFundraisingSchedule() async {
    try {
      final response = await dio.get(ApiPath.GET_ALL_FUNDRAISING_SCHEDULE);
      final result = (response.data['data'] as List).map((e) => ScheduleFundraisingModel.fromJson(e)).toList();
      return Right(result);
    } catch (e) {
      return Left(ExceptionModel(e.toString()));
    }
  }

  @override
  Future<Either<ExceptionModel, BaseModel>> updateFundraisingSchedule(int id, Map<String, dynamic> payload) async {
    throw Exception();
  }
}
