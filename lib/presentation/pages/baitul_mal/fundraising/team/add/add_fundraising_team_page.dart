import 'package:flutter/material.dart';
import 'package:flutter_api/presentation/components/global/button/outline_button.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../../../components/global/button/primary_button.dart';
import '../../../../../constant/ui_constant.dart';
import '../../../../../utils/style/generate_style.dart';

class AddFundraisingTeamPage extends StatefulWidget {
  AddFundraisingTeamPage({Key? key}) : super(key: key);

  @override
  State<AddFundraisingTeamPage> createState() => _AddFundraisingTeamPageState();
}

class _AddFundraisingTeamPageState extends State<AddFundraisingTeamPage> {
  final FormGroup formGroup = fb.group({
    'campaign': ['', Validators.required],
    'supervisor': ['', Validators.required],
    'name': ['', Validators.required],
    'code': ['', Validators.required],
    'teams': FormArray([]),
  });

  FormArray get teams => formGroup.control('teams') as FormArray;

  @override
  void initState() {
    super.initState();
    teams.add(
      FormGroup({
        'name': FormControl<String>(value: '', validators: [Validators.required])
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
          'Buat Tim Baru',
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
                  Text('Campaign Name'),
                  SizedBox(height: 4),
                  ReactiveDropdownField(
                    items: ['Test'].map((e) => DropdownMenuItem(child: Text(e), value: e)).toList(),
                    formControlName: 'campaign',
                    decoration: GenerateStyle.inputDecoration('Campaign Name'),
                  ),
                  SizedBox(height: 12),
                  Text('Supervisor'),
                  SizedBox(height: 4),
                  ReactiveDropdownField(
                    items: ['Test'].map((e) => DropdownMenuItem(child: Text(e), value: e)).toList(),
                    formControlName: 'supervisor',
                    decoration: GenerateStyle.inputDecoration('Supervisor'),
                  ),
                  SizedBox(height: 12),
                  ReactiveTextField(
                    formControlName: 'name',
                    keyboardType: TextInputType.text,
                    decoration: GenerateStyle.inputDecoration('Nama Tim'),
                  ),
                  SizedBox(height: 12),
                  ReactiveFormArray(
                    formArrayName: 'teams',
                    builder: (context, formArray, child) {
                      return Column(
                        children: teams.controls.map((control) => control as FormGroup).map((currentForm) {
                          return ReactiveForm(
                            formGroup: currentForm,
                            child: Column(
                              children: [
                                ReactiveDropdownField(
                                  items: ['Test'].map((e) => DropdownMenuItem(child: Text(e), value: e)).toList(),
                                  formControlName: 'name',
                                  decoration: GenerateStyle.inputDecoration('Nama Tim'),
                                ),
                                SizedBox(height: 12),
                              ],
                            ),
                          );
                        }).toList(),
                      );
                    },
                  ),
                  SizedBox(height: 12),
                  OutlinedButton(
                    onPressed: () {
                      teams.add(
                        FormGroup({
                          'task': FormControl<String>(value: '', validators: [Validators.required])
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
