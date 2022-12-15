import 'package:dartz/dartz.dart';
import 'package:flutter_api/model/exception_model.dart';
import 'package:flutter_api/model/fundraising/donation_campaign_model.dart';

import '../../../../model/fundraising/target/target_fundraising_model.dart';

abstract class FundraisingTargetRepository {
  
  Future<Either<ExceptionModel, List<DonationCampaignModel>>> getDonationCampaign();
  Future<Either<ExceptionModel, List<TargetFundraisingModel>>> getFundrasingTarget();
  Future<void> addTargetFundraising();

}