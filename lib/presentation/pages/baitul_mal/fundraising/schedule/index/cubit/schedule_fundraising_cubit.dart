import 'package:bloc/bloc.dart';
import 'package:flutter_api/model/fundraising/schedule/schedule_fundraising_model.dart';
import 'package:flutter_api/repository/baitul_mal/fundraising/schedule/fundraising_schedule_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'schedule_fundraising_state.dart';
part 'schedule_fundraising_cubit.freezed.dart';

@injectable
class ScheduleFundraisingCubit extends Cubit<ScheduleFundraisingState> {
  FundraisingScheduleRepository repository;

  ScheduleFundraisingCubit(this.repository) : super(ScheduleFundraisingState.initial());

  Future<void> getAllFundraisingSchedule() async {
    final result = await repository.getAllFundraisingSchedule();
    result.fold(
      (l) {
        emit(ScheduleFundraisingState.error(l.message));
      },
      (r) {
         emit(ScheduleFundraisingState.succcess(r));
      },
    );
  }
}
