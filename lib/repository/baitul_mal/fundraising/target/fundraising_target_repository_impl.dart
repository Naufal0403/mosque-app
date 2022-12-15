import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_api/model/fundraising/target/target_fundraising_model.dart';
import 'package:flutter_api/repository/baitul_mal/fundraising/target/fundraising_target_repository.dart';
import 'package:flutter_api/repository/utils/api_path.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';

import '../../../../model/exception_model.dart';
import '../../../../model/fundraising/donation_campaign_model.dart';

@LazySingleton(as: FundraisingTargetRepository)
class FundraisingTargetRepositoryImpl implements FundraisingTargetRepository {
  Dio dio;
  final flutterSecureStorage = const FlutterSecureStorage();

  FundraisingTargetRepositoryImpl(this.dio);

  @override
  Future<void> addTargetFundraising() async {}

  @override
  Future<Either<ExceptionModel, List<DonationCampaignModel>>> getDonationCampaign() async {
    final token = await flutterSecureStorage.read(key: 'token');

    dio.options.headers = {'Authorization': 'Bearer $token', 'Accept': 'application/json'};

    try {
      final response = await dio.get(ApiPath.GET_DONATION_CAMPAIGN);
      final result = (response.data['data'] as List).map((e) => DonationCampaignModel.fromJson(e)).toList();
      return Right(result);
    } catch (e) {
      return Left(ExceptionModel(e.toString()));
    }
  }

  @override
  Future<Either<ExceptionModel, List<TargetFundraisingModel>>> getFundrasingTarget() async {
     try {
      final response = await dio.get(ApiPath.GET_ALL_TARGET_FUNDRAISING);
      final result = (response.data['data'] as List).map((e) => TargetFundraisingModel.fromJson(e)).toList();
      return Right(result);
    } catch (e) {
      return Left(ExceptionModel(e.toString()));
    }
  }
}
