// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/auth_cubit.dart' as _i14;
import 'presentation/pages/baitul_mal/fundraising/schedule/add/cubit/add_schedule_fundraising_cubit.dart'
    as _i10;
import 'presentation/pages/baitul_mal/fundraising/schedule/index/cubit/schedule_fundraising_cubit.dart'
    as _i8;
import 'presentation/pages/baitul_mal/fundraising/target/add/cubit/add_target_fundraising_cubit.dart'
    as _i11;
import 'presentation/pages/baitul_mal/fundraising/target/index/cubit/target_fundraising_cubit.dart'
    as _i9;
import 'repository/auth/auth_repository.dart' as _i12;
import 'repository/auth/auth_repositoy_impl.dart' as _i13;
import 'repository/baitul_mal/fundraising/schedule/fundraising_schedule_repository.dart'
    as _i4;
import 'repository/baitul_mal/fundraising/schedule/fundraising_schedule_repository_impl.dart'
    as _i5;
import 'repository/baitul_mal/fundraising/target/fundraising_target_repository.dart'
    as _i6;
import 'repository/baitul_mal/fundraising/target/fundraising_target_repository_impl.dart'
    as _i7;
import 'repository/utils/api_utils.dart'
    as _i15; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final apiUtils = _$ApiUtils();
  gh.lazySingleton<_i3.Dio>(() => apiUtils.dio());
  gh.lazySingleton<_i4.FundraisingScheduleRepository>(
      () => _i5.FundraisingScheduleRepositoryImpl(get<_i3.Dio>()));
  gh.lazySingleton<_i6.FundraisingTargetRepository>(
      () => _i7.FundraisingTargetRepositoryImpl(get<_i3.Dio>()));
  gh.factory<_i8.ScheduleFundraisingCubit>(() =>
      _i8.ScheduleFundraisingCubit(get<_i4.FundraisingScheduleRepository>()));
  gh.factory<_i9.TargetFundraisingCubit>(
      () => _i9.TargetFundraisingCubit(get<_i6.FundraisingTargetRepository>()));
  gh.factory<_i10.AddScheduleFundraisingCubit>(() =>
      _i10.AddScheduleFundraisingCubit(
          get<_i4.FundraisingScheduleRepository>()));
  gh.factory<_i11.AddTargetFundraisingCubit>(() =>
      _i11.AddTargetFundraisingCubit(get<_i6.FundraisingTargetRepository>()));
  gh.lazySingleton<_i12.AuthRepository>(
      () => _i13.AuthRepositoryImpl(get<_i3.Dio>()));
  gh.factory<_i14.AuthCubit>(() => _i14.AuthCubit(get<_i12.AuthRepository>()));
  return get;
}

class _$ApiUtils extends _i15.ApiUtils {}
