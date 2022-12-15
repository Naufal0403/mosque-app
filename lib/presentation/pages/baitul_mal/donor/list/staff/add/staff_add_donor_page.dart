import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_api/presentation/components/global/button/primary_button.dart';
import 'package:flutter_api/presentation/utils/style/generate_style.dart';
import 'package:reactive_date_time_picker/reactive_date_time_picker.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:syncfusion_flutter_signaturepad/signaturepad.dart';

import '../../../../../../constant/ui_constant.dart';

class StaffAddDonorPage extends StatefulWidget {
  const StaffAddDonorPage({Key? key}) : super(key: key);

  @override
  State<StaffAddDonorPage> createState() => _StaffAddDonorPageState();
}

class _StaffAddDonorPageState extends State<StaffAddDonorPage> {
  final GlobalKey<SfSignaturePadState> _signaturePadKey = GlobalKey();

  final FormGroup formGroup = fb.group({
    'address': ['', Validators.required],
    'phone_number': ['', Validators.required],
    'job': ['', Validators.required],
    'gender': ['', Validators.required],
    'birth_place': ['', Validators.required],
    'birth_date': FormControl<DateTime>(validators: [Validators.required]),
    'company': ['', Validators.required],
  });

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
            color: UiConstant.primary,
          ),
        ),
        title: Text(
          'Biodata Donatur',
          style: TextStyle(
            color: UiConstant.primary,
            fontWeight: FontWeight.w600,
          ),
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: ReactiveFormBuilder(
          form: () => formGroup,
          builder: (context, formGroup, child) {
            return Padding(
              padding: EdgeInsets.all(18),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Tanda Tangan Penerima',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                      IconButton(
                        onPressed: () {
                          _signaturePadKey.currentState!.clear();
                        },
                        icon: Icon(
                          Icons.replay_outlined,
                          color: Colors.redAccent,
                        ),
                      )
                    ],
                  ),
                  Container(
                    height: 200,
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
                    child: SfSignaturePad(
                      key: _signaturePadKey,
                    ),
                  ),
                  SizedBox(height: 12),
                  ReactiveTextField(
                    formControlName: 'address',
                    maxLines: 3,
                    decoration: GenerateStyle.inputDecoration('Alamat'),
                  ),
                  SizedBox(height: 12),
                  ReactiveTextField(
                    formControlName: 'phone_number',
                    keyboardType: TextInputType.phone,
                    decoration: GenerateStyle.inputDecoration('Nomor HP'),
                  ),
                  SizedBox(height: 12),
                  ReactiveTextField(
                    formControlName: 'job',
                    decoration: GenerateStyle.inputDecoration('Pekerjaan'),
                  ),
                  SizedBox(height: 12),
                  ReactiveDropdownField(
                    formControlName: 'gender',
                    items: ['Laki - Laki', 'Perempuan']
                        .map(
                          (e) => DropdownMenuItem(
                            value: e,
                            child: Text(e),
                          ),
                        )
                        .toList(),
                    decoration: GenerateStyle.inputDecoration('Alamat'),
                  ),
                  SizedBox(height: 12),
                  ReactiveTextField(
                    formControlName: 'birth_place',
                    decoration: GenerateStyle.inputDecoration('Tempat Lahir'),
                  ),
                  SizedBox(height: 12),
                  ReactiveDateTimePicker(
                    formControlName: 'birth_date',
                    decoration: GenerateStyle.inputDecoration('Tanggal Lahir'),
                  ),
                  SizedBox(height: 12),
                  ReactiveTextField(
                    formControlName: 'company',
                    decoration: GenerateStyle.inputDecoration('Tempat Kerja'),
                  ),
                  SizedBox(height: 12),
                  Container(
                    height: 150,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          CupertinoIcons.photo_camera_solid,
                          color: UiConstant.primary,
                          size: 48,
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Unggah Foto',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: UiConstant.primary,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 12),
                  ReactiveFormConsumer(
                    builder: (context, formGroup, child) {
                      return PrimaryButton(
                        onTap: () {},
                        isRounded: false,
                        isEnable: formGroup.valid,
                        title: 'Simpan',
                      );
                    },
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
