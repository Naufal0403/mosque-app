import 'package:flutter/material.dart';
import 'package:flutter_api/application/auth/auth_cubit.dart';
import 'package:flutter_api/injection.dart';
import 'package:flutter_api/presentation/components/global/button/primary_button.dart';
import 'package:flutter_api/presentation/utils/routes/route_name.dart';
import 'package:flutter_api/presentation/utils/style/generate_style.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../components/global/dialog/loading_dialog.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final bloc = locator<AuthCubit>();

  final formGroup = fb.group({
    'email': ['', Validators.required],
    'password': ['', Validators.required],
    'remember_me': [true, Validators.requiredTrue], // remember me :(
  });

  bool isHidePassword = true;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => bloc,
      child: BlocListener<AuthCubit, AuthState>(
        listener: (context, state) {
          state.map(
            initial: (initial) {},
            loading: (loading) {
              showLoadingDialog(context);
            },
            failure: (failure) {
              Navigator.pop(context);
            },
            succcess: (succcess) {
              Navigator.pop(context);
              Navigator.of(context).pushNamed(RouteName.HOME);
            },
          );
        },
        child: Scaffold(
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
                                  'Assalamualaikum',
                                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  'Silahkan Login',
                                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                                ),
                                SizedBox(height: 24),
                                ReactiveTextField(
                                  formControlName: 'email',
                                  decoration: GenerateStyle.inputDecoration('Masukkan Email/Username'),
                                ),
                                SizedBox(height: 18),
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
                                SizedBox(height: 12),
                                Row(
                                  children: [
                                    ReactiveCheckbox(
                                      formControlName: 'remember_me',
                                    ),
                                    Text(
                                      'Ingat Saya',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 12),
                                ReactiveFormConsumer(builder: (context, formGroup, child) {
                                  return PrimaryButton(
                                    onTap: () {
                                      bloc.mockLogin({
                                        'email': formGroup.value['email'],
                                        'password': formGroup.value['password'],
                                      });
                                    },
                                    title: 'Masuk',
                                    isEnable: true,
                                  );
                                }),
                                SizedBox(height: 18),
                                InkWell(
                                  onTap: () {
                                    Navigator.pushNamed(context, RouteName.RESET_PASSWORD);
                                  },
                                  child: Text(
                                    'Lupas Password ?',
                                    style: TextStyle(
                                      color: Colors.blue,
                                      fontWeight: FontWeight.w600,
                                    ),
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
        ),
      ),
    );
  }
}
