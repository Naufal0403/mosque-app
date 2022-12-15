import 'package:bloc/bloc.dart';
import 'package:flutter_api/model/fundraising/target/target_fundraising_model.dart';
import 'package:flutter_api/repository/baitul_mal/fundraising/target/fundraising_target_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'target_fundraising_state.dart';
part 'target_fundraising_cubit.freezed.dart';

@injectable
class TargetFundraisingCubit extends Cubit<TargetFundraisingState> {
  FundraisingTargetRepository repository;

  TargetFundraisingCubit(this.repository) : super(TargetFundraisingState.initial());

  Future<void> getAllTargetFundraising() async {

    emit(TargetFundraisingState.loading());

    final response = await repository.getFundrasingTarget();

    response.fold(
      (l) {
        emit(TargetFundraisingState.error(l.message));
      },
      (r) {
        emit(TargetFundraisingState.succcess(r));
      },
    );
  }
}
