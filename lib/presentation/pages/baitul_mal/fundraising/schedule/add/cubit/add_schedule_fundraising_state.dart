part of 'add_schedule_fundraising_cubit.dart';

@freezed
class AddScheduleFundraisingState with _$AddScheduleFundraisingState {
  const factory AddScheduleFundraisingState.initial() = _Initial;
  const factory AddScheduleFundraisingState.loading() = _Loading;
  const factory AddScheduleFundraisingState.error(String message) = _Error;
  const factory AddScheduleFundraisingState.success() = _Success;
}
