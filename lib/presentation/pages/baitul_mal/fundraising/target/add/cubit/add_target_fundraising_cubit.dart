import 'package:bloc/bloc.dart';
import 'package:flutter_api/model/fundraising/donation_campaign_model.dart';
import 'package:flutter_api/repository/baitul_mal/fundraising/target/fundraising_target_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

part 'add_target_fundraising_state.dart';
part 'add_target_fundraising_cubit.freezed.dart';

@injectable
class AddTargetFundraisingCubit extends Cubit<AddTargetFundraisingState> {
  FundraisingTargetRepository repository;

  AddTargetFundraisingCubit(this.repository) : super(AddTargetFundraisingState.initial());

  final _donationCampaign = BehaviorSubject<List<DonationCampaignModel>>.seeded([]);

  Stream<List<DonationCampaignModel>> get donationCampaign => _donationCampaign.stream;

  Future<void> getDonationCampaign() async {
    final response = await repository.getDonationCampaign();
    response.fold(
      (l) {
        print(l.message);
      },
      (r) {
        r.forEach((element) { 
          print(element.name);
        });
      },
    );
  }

  Future<void> submit() async {}
}
