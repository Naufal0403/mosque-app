part of 'target_fundraising_cubit.dart';

@freezed
class TargetFundraisingState with _$TargetFundraisingState {
  const factory TargetFundraisingState.initial() = _Initial;
  const factory TargetFundraisingState.loading() = _Loading;
  const factory TargetFundraisingState.error(String message) = _Error;
  const factory TargetFundraisingState.succcess(List<TargetFundraisingModel> payload) = _Success;
}
