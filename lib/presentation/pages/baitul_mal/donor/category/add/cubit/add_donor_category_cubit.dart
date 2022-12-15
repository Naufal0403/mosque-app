import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_donor_category_state.dart';
part 'add_donor_category_cubit.freezed.dart';

class AddDonorCategoryCubit extends Cubit<AddDonorCategoryState> {
  AddDonorCategoryCubit() : super(AddDonorCategoryState.initial());
}
