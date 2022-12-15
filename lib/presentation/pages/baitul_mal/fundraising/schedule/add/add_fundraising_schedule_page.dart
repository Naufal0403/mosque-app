import 'package:flutter/material.dart';
import 'package:flutter_api/injection.dart';
import 'package:flutter_api/presentation/components/global/dialog/loading_dialog.dart';
import 'package:flutter_api/presentation/pages/baitul_mal/fundraising/target/add/cubit/add_target_fundraising_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reactive_date_time_picker/reactive_date_time_picker.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../../../components/global/button/primary_button.dart';
import '../../../../../utils/style/generate_style.dart';
import 'cubit/add_schedule_fundraising_cubit.dart';

class AddFundraisingSchedulePage extends StatelessWidget {
  AddFundraisingSchedulePage({Key? key}) : super(key: key);

  final bloc = locator<AddScheduleFundraisingCubit>();

  final FormGroup formGroup = fb.group({
    'duration_name': ['', Validators.required],
    'duration_type': ['day', Validators.required],
    'start_from': FormControl<DateTime>(),
    'end_at': FormControl<DateTime>(),
    'nominal_target': ['', Validators.required],
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => bloc,
      child: BlocListener<AddScheduleFundraisingCubit, AddScheduleFundraisingState>(
        listener: (context, state) {
          state.map(
            initial: (initial) {},
            loading: (loading) {
              showLoadingDialog(context);
            },
            error: (failure) {
              Navigator.pop(context);
            },
            success: (success) {
              Navigator.pop(context);
              Navigator.pop(context);
            },
          );
        },
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            centerTitle: true,
            leading: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.arrow_back,
                color: Color(0xff249A84),
              ),
            ),
            title: Text(
              'Tambah Jadwal',
              style: TextStyle(
                color: Color(0xff249A84),
                fontWeight: FontWeight.w600,
              ),
            ),
            elevation: 0,
          ),
          body: ReactiveFormBuilder(
            form: () => formGroup,
            builder: (context, formGroup, child) {
              return SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.all(18),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: ReactiveTextField(
                              formControlName: 'duration_name',
                              keyboardType: TextInputType.number,
                              decoration: GenerateStyle.inputDecoration('Durasi'),
                            ),
                          ),
                          SizedBox(width: 12),
                          Expanded(
                            child: ReactiveDropdownField(
                              formControlName: 'duration_type',
                              items: [
                                DropdownMenuItem(child: Text('Hari'), value: 'day'),
                                DropdownMenuItem(child: Text('Minggu'), value: 'week'),
                                DropdownMenuItem(child: Text('Bulan'), value: 'month'),
                                DropdownMenuItem(child: Text('Tahun'), value: 'year'),
                              ],
                              decoration: GenerateStyle.inputDecoration(''),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 12),
                      Row(
                        children: [
                          Expanded(
                            child: ReactiveDateTimePicker(
                              formControlName: 'start_from',
                              keyboardType: TextInputType.number,
                              firstDate: DateTime.now(),
                              lastDate: DateTime(2100),
                              decoration: GenerateStyle.inputDecoration('Dimulai'),
                            ),
                          ),
                          SizedBox(width: 12),
                          Expanded(
                            child: ReactiveDateTimePicker(
                              formControlName: 'end_at',
                              keyboardType: TextInputType.number,
                              firstDate: DateTime.now(),
                              lastDate: DateTime(2100),
                              decoration: GenerateStyle.inputDecoration('Berakhir'),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 12),
                      ReactiveTextField(
                        formControlName: 'nominal_target',
                        keyboardType: TextInputType.number,
                        decoration: GenerateStyle.inputDecoration('Target Nominal'),
                      ),
                      SizedBox(height: 12),
                      ReactiveFormConsumer(builder: (context, formGroup, child) {
                        return PrimaryButton(
                          onTap: () {
                            bloc.addScheduleFundraising({});
                          },
                          title: 'Simpan',
                          isEnable: formGroup.valid,
                          isRounded: false,
                        );
                      }),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
