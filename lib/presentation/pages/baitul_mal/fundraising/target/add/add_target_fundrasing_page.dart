import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_api/injection.dart';
import 'package:flutter_api/model/fundraising/donation_campaign_model.dart';
import 'package:flutter_api/presentation/pages/baitul_mal/fundraising/target/add/cubit/add_target_fundraising_cubit.dart';
import 'package:reactive_date_time_picker/reactive_date_time_picker.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../../../components/global/button/primary_button.dart';
import '../../../../../constant/ui_constant.dart';
import '../../../../../utils/style/generate_style.dart';

class AddTargetFundrasingPage extends StatefulWidget {
  const AddTargetFundrasingPage({Key? key}) : super(key: key);

  @override
  State<AddTargetFundrasingPage> createState() => _AddTargetFundrasingPageState();
}

class _AddTargetFundrasingPageState extends State<AddTargetFundrasingPage> {
  final bloc = locator<AddTargetFundraisingCubit>();

  final FormGroup formGroup = fb.group({
    'category': ['', Validators.required],
    'campaign': FormControl<int>(value: null),
    'donatur_type': ['', Validators.required],
    'donation_type': ['', Validators.required],
    'nominal_target': ['', Validators.required],
    'targets': FormArray([]),
    'start_from': FormControl<DateTime>(),
    'end_at': FormControl<DateTime>(),
  });

  FormArray get tasks => formGroup.control('targets') as FormArray;

  @override
  void initState() {
    super.initState();
    bloc.getDonationCampaign();
    tasks.add(
      FormGroup({
        'target': FormControl<String>(value: '', validators: [Validators.required])
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          'Tambah Target Fundraising',
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  StreamBuilder<List<DonationCampaignModel>>(
                      stream: bloc.donationCampaign,
                      builder: (context, snapshot) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Kampanye'),
                            SizedBox(height: 4),
                            ReactiveDropdownField(
                              formControlName: 'campaign',
                              items: (snapshot.data ?? [])
                                  .map(
                                    (e) => DropdownMenuItem(
                                      child: Text(e.name ?? "-"),
                                      value: e.id,
                                    ),
                                  )
                                  .toList(),
                              decoration: GenerateStyle.inputDecoration('Nama Campaign'),
                            ),
                          ],
                        );
                      }),
                  SizedBox(height: 12),
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Tipe Donatur'),
                            SizedBox(height: 4),
                            ReactiveDropdownField(
                              formControlName: 'donatur_type',
                              items: ['Perusahaan']
                                  .map(
                                    (e) => DropdownMenuItem(
                                      child: Text(e),
                                      value: e,
                                    ),
                                  )
                                  .toList(),
                              decoration: GenerateStyle.inputDecoration('Tipe Donatur'),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 12),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Tipe Donasi'),
                            SizedBox(height: 4),
                            ReactiveDropdownField(
                              formControlName: 'donation_type',
                              items: ['Transfer']
                                  .map(
                                    (e) => DropdownMenuItem(
                                      child: Text(e),
                                      value: e,
                                    ),
                                  )
                                  .toList(),
                              decoration: GenerateStyle.inputDecoration('Tipe Donasi'),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 12),
                  Text('Target'),
                  SizedBox(height: 4),
                  ReactiveFormArray(
                    formArrayName: 'targets',
                    builder: (context, formArray, child) {
                      return Column(
                        children: tasks.controls.map((control) => control as FormGroup).map((currentForm) {
                          return ReactiveForm(
                            formGroup: currentForm,
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                      child: ReactiveDropdownField(
                                        items: ['Pt Kreasi Alam Tekknologi']
                                            .map((e) => DropdownMenuItem(child: Text(e), value: e))
                                            .toList(),
                                        formControlName: 'target',
                                        decoration: GenerateStyle.inputDecoration('Target'),
                                      ),
                                    ),
                                    SizedBox(width: 12),
                                    InkWell(
                                      onTap: () {
                                        tasks.remove(currentForm);
                                      },
                                      child: Container(
                                        height: 40,
                                        width: 40,
                                        padding: EdgeInsets.all(4),
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: Colors.grey[300]!,
                                          ),
                                          borderRadius: BorderRadius.circular(5),
                                        ),
                                        child: Center(
                                          child: Icon(
                                            CupertinoIcons.clear,
                                            color: Colors.red,
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(height: 12),
                              ],
                            ),
                          );
                        }).toList(),
                      );
                    },
                  ),
                  OutlinedButton(
                    onPressed: () {
                      tasks.add(
                        FormGroup({
                          'target': FormControl<String>(value: '', validators: [Validators.required])
                        }),
                      );
                    },
                    child: Container(
                      padding: EdgeInsets.all(12),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.add, color: UiConstant.primary),
                          SizedBox(width: 4),
                          Text(
                            'Tambah',
                            style: TextStyle(color: UiConstant.primary, fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 12),
                  Text('Nominal Target'),
                  SizedBox(height: 4),
                  ReactiveTextField(
                    formControlName: 'nominal_target',
                    keyboardType: TextInputType.number,
                    decoration: GenerateStyle.inputDecoration('Target Nominal'),
                  ),
                  SizedBox(height: 12),
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Mulai'),
                            SizedBox(height: 4),
                            ReactiveDateTimePicker(
                              formControlName: 'start_from',
                              keyboardType: TextInputType.number,
                              firstDate: DateTime.now(),
                              lastDate: DateTime(2100),
                              decoration: GenerateStyle.inputDecoration('Dimulai'),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 12),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Selesai'),
                            SizedBox(height: 4),
                            ReactiveDateTimePicker(
                              formControlName: 'end_at',
                              keyboardType: TextInputType.number,
                              firstDate: DateTime.now(),
                              lastDate: DateTime(2100),
                              decoration: GenerateStyle.inputDecoration('Berakhir'),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 12),
                  ReactiveFormConsumer(builder: (context, formGroup, child) {
                    return PrimaryButton(
                      onTap: () {
                        Navigator.pop(context);
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
    );
  }
}
