import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_api/presentation/components/global/button/primary_button.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../../../../constant/ui_constant.dart';
import '../../../../../../utils/style/generate_style.dart';

class SupervisorAddTaskPage extends StatefulWidget {
  const SupervisorAddTaskPage({Key? key}) : super(key: key);

  @override
  State<SupervisorAddTaskPage> createState() => _SupervisorAddTaskPageState();
}

class _SupervisorAddTaskPageState extends State<SupervisorAddTaskPage> {
  final FormGroup formGroup = fb.group({
    'member': ['', Validators.required],
    'tasks': FormArray([]),
  });

  FormArray get tasks => formGroup.control('tasks') as FormArray;

  @override
  void initState() {
    super.initState();
    tasks.add(
      FormGroup({
        'task': FormControl<String>(value: '', validators: [Validators.required])
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: UiConstant.primary,
          ),
        ),
        title: Text(
          'Tugas Per Staff',
          style: TextStyle(
            color: UiConstant.primary,
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Nama Staff', style: TextStyle(fontSize: 16)),
                        SizedBox(height: 4),
                        ReactiveDropdownField(
                          items: ['Budi']
                              .map(
                                (e) => DropdownMenuItem(child: Text(e), value: e),
                              )
                              .toList(),
                          formControlName: 'member',
                          decoration: GenerateStyle.inputDecoration('Nama Staff'),
                        ),
                        SizedBox(height: 12),
                        Text('Tugas Staff', style: TextStyle(fontSize: 16)),
                        SizedBox(height: 4),
                        ReactiveFormArray(
                          formArrayName: 'tasks',
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
                                              items: ['Kirim surat pengajuan ke 1 ']
                                                  .map((e) => DropdownMenuItem(child: Text(e), value: e))
                                                  .toList(),
                                              formControlName: 'task',
                                              decoration: GenerateStyle.inputDecoration('Tugas'),
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
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 12),
                ReactiveFormConsumer(builder: (context, formGroup, child) {
                  return PrimaryButton(
                    title: 'Submit',
                    isRounded: false,
                    isEnable: formGroup.valid,
                    onTap: () {
                      Navigator.pop(context);
                    },
                  );
                })
              ],
            ),
          );
        },
      ),
    );
  }
}
