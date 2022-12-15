part of 'schedule_fundraising_cubit.dart';

@freezed
class ScheduleFundraisingState with _$ScheduleFundraisingState {
  const factory ScheduleFundraisingState.initial() = _Initial;
  const factory ScheduleFundraisingState.loading() = _Loading;
  const factory ScheduleFundraisingState.error(String message) = _Error;
  const factory ScheduleFundraisingState.succcess(List<ScheduleFundraisingModel>? payload) = _Success;
}
