import 'package:bloc/bloc.dart';
import 'package:flutter_api/presentation/pages/baitul_mal/fundraising/target/add/cubit/add_target_fundraising_cubit.dart';
import 'package:flutter_api/repository/baitul_mal/fundraising/schedule/fundraising_schedule_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'add_schedule_fundraising_state.dart';
part 'add_schedule_fundraising_cubit.freezed.dart';

@injectable
class AddScheduleFundraisingCubit extends Cubit<AddScheduleFundraisingState> {
  FundraisingScheduleRepository repository;

  AddScheduleFundraisingCubit(this.repository) : super(AddScheduleFundraisingState.initial());

  Future<void> addScheduleFundraising(Map<String, dynamic> payload) async {
    emit(AddScheduleFundraisingState.loading());

    final response = await repository.addFundraisingSchedule(payload);

    response.fold(
      (l) {
        emit(AddScheduleFundraisingState.error(l.message));
      },
      (r) {
         emit(AddScheduleFundraisingState.success());
      },
    );
  }
}
