import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../../../components/global/button/primary_button.dart';
import '../../../../../utils/style/generate_style.dart';

class AddDonorCategoryPage extends StatelessWidget {
  AddDonorCategoryPage({Key? key}) : super(key: key);

  final FormGroup formGroup = fb.group({
    'name': ['', Validators.required]
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
            color: Color(0xff249A84),
          ),
        ),
        title: Text(
          'Buat Kategori Donatur',
          style: TextStyle(
            color: Color(0xff249A84),
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.menu,
              color: Color(0xff249A84),
            ),
          )
        ],
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
                  ReactiveTextField(
                    formControlName: 'name',
                    decoration: GenerateStyle.inputDecoration('Nama Kategori'),
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
