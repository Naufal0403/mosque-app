import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'donor_category_state.dart';
part 'donor_category_cubit.freezed.dart';

class DonorCategoryCubit extends Cubit<DonorCategoryState> {
  DonorCategoryCubit() : super(DonorCategoryState.initial());
}
