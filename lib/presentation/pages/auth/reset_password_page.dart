import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../components/global/button/primary_button.dart';
import '../../utils/style/generate_style.dart';

class ResetPasswordPage extends StatefulWidget {
  const ResetPasswordPage({Key? key}) : super(key: key);

  @override
  State<ResetPasswordPage> createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends State<ResetPasswordPage> {
  final formGroup = fb.group({
    'password': ['', Validators.required],
  });

  bool isHidePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Image.asset(
            'assets/images/bg_login.png',
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          ReactiveFormBuilder(
              form: () => formGroup,
              builder: (context, formGroup, child) {
                return Padding(
                  padding: const EdgeInsets.all(18),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 48),
                      Image.asset(
                        'assets/images/demasjidlogo.png',
                        width: 150,
                        height: 44,
                        fit: BoxFit.fill,
                      ),
                      SizedBox(height: 32),
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.black26, width: 1),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            SizedBox(height: 12),
                            Text(
                              'Silahkan Lengkapi\nUntuk Reset Password',
                              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(height: 24),
                            ReactiveTextField(
                              obscureText: isHidePassword,
                              formControlName: 'password',
                              decoration: GenerateStyle.inputDecoration('Masukkan Password').copyWith(
                                suffixIcon: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      isHidePassword = !isHidePassword;
                                    });
                                  },
                                  icon: isHidePassword ? Icon(Icons.visibility) : Icon(Icons.visibility_off),
                                ),
                              ),
                            ),
                            SizedBox(height: 18),
                            ReactiveFormConsumer(builder: (context, formGroup, child) {
                              return PrimaryButton(
                                onTap: () {},
                                title: 'Reset',
                                isEnable: formGroup.valid,
                              );
                            }),
                            SizedBox(height: 18),
                            Text(
                              'Lupas Password ?',
                              style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(height: 18),
                          ],
                        ),
                      )
                    ],
                  ),
                );
              }),
        ],
      ),
    );
  }
}
