part of 'add_target_fundraising_cubit.dart';

@freezed
class AddTargetFundraisingState with _$AddTargetFundraisingState {
  const factory AddTargetFundraisingState.initial() = _Initial;
  const factory AddTargetFundraisingState.loading() = _Loading;
  const factory AddTargetFundraisingState.failure(String message) = _Failure;
  const factory AddTargetFundraisingState.success() = _Succcess;
}
