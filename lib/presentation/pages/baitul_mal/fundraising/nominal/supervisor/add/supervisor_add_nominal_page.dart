import 'package:flutter/material.dart';
import 'package:flutter_api/presentation/components/global/button/primary_button.dart';
import 'package:flutter_api/presentation/constant/ui_constant.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../../../../utils/style/generate_style.dart';

class SupervisorAddNominalPage extends StatefulWidget {
  const SupervisorAddNominalPage({Key? key}) : super(key: key);

  @override
  State<SupervisorAddNominalPage> createState() => _SupervisorAddNominalPageState();
}

class _SupervisorAddNominalPageState extends State<SupervisorAddNominalPage> {
  final FormGroup formGroup = fb.group({
    'nominals': FormArray([]),
  });

  FormArray get nominals => formGroup.control('nominals') as FormArray;

  @override
  void initState() {
    super.initState();
    for (var i = 0; i < 4; i++) {
      nominals.add(
        FormGroup({
          'nominal': FormControl<String>(value: '', validators: [Validators.required])
        }),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Color(0xff249A84),
          ),
        ),
        title: Text(
          'Target Nominal',
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
          return Padding(
            padding: EdgeInsets.all(18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey[300]!,
                                offset: Offset(2, 2),
                                blurRadius: 3,
                              )
                            ],
                          ),
                          padding: EdgeInsets.all(12),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  border: Border.all(color: UiConstant.primary),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Center(
                                  child: Icon(Icons.monetization_on_outlined, color: UiConstant.primary),
                                ),
                              ),
                              SizedBox(width: 12),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Target'),
                                  SizedBox(height: 4),
                                  Text(
                                    'RP 1.000.000',
                                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 12),
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey[300]!,
                                offset: Offset(2, 2),
                                blurRadius: 3,
                              )
                            ],
                          ),
                          padding: EdgeInsets.all(12),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  border: Border.all(color: UiConstant.primary),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Center(
                                  child: Icon(Icons.people_alt_outlined, color: UiConstant.primary),
                                ),
                              ),
                              SizedBox(width: 12),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Anggota'),
                                  SizedBox(height: 4),
                                  Text(
                                    '7',
                                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 12),
                        ReactiveFormArray(
                          formArrayName: 'nominals',
                          builder: (context, formArray, child) {
                            return Column(
                              children: nominals.controls.map((control) => control as FormGroup).map((currentForm) {
                                return ReactiveForm(
                                  formGroup: currentForm,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Paijo',
                                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                                      ),
                                      SizedBox(height: 6),
                                      ReactiveTextField(
                                        formControlName: 'nominal',
                                        decoration: GenerateStyle.inputDecoration('Nominal'),
                                      ),
                                      SizedBox(height: 12),
                                    ],
                                  ),
                                );
                              }).toList(),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 12),
                Text('Total Dianggarkan'),
                Text(
                  'Rp. 371.000.000',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 12),
                Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Total Dianggarkan'),
                          Text(
                            'Rp. 371.000.000',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: ReactiveFormConsumer(
                        builder: (context, formGroup, child) {
                          return PrimaryButton(
                            isRounded: false,
                            isEnable: formGroup.valid,
                            title: 'Simpan',
                            onTap: () {},
                          );
                        }
                      ),
                    )
                  ],
                )
              ],
            ),
          );
        }
      ),
    );
  }
}
