import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_api/presentation/components/global/button/primary_button.dart';
import 'package:flutter_api/presentation/utils/routes/route_name.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final flutterSecureStorage = const FlutterSecureStorage();

  @override
  void initState() {
    super.initState();
    flutterSecureStorage.read(key: 'token').then((value) {
      // if (value != null) {
      //   Navigator.pushNamed(context, RouteName.HOME);
      // } else {
      //   Navigator.pushNamed(context, RouteName.LOGIN);
      // }
       Navigator.pushNamed(context, RouteName.LOGIN);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Image.asset(
            'assets/images/bg_login.png',
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 24,
              horizontal: 18,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Image.asset(
                    'assets/images/demasjidlogo.png',
                    width: 225,
                    height: 66,
                    fit: BoxFit.fill,
                  ),
                ),
                SizedBox(height: 32),
                Text(
                  'Assalamualaikum',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 18),
                Text(
                  'Selamat datang di platform Digital Enterprise Masjid',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 18),
                Text(
                  '“Kembali ke masjid sebagai pusat peradaban\ndi era digital”',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 32),
                PrimaryButton(
                  onTap: () {
                    Navigator.pushNamed(context, RouteName.LOGIN);
                  },
                  title: 'LOGIN',
                  backgroundColor: Color(0xff000084),
                ),
                SizedBox(height: 18),
                PrimaryButton(
                  onTap: () {},
                  title: 'AKTIVASI MASJID',
                  backgroundColor: Color(0xffFF9B34),
                  textColor: Color(0xff151515),
                ),
                SizedBox(height: 18),
                PrimaryButton(
                  onTap: () {},
                  title: 'AKTIVASI PENGGUNA',
                  backgroundColor: Color(0xff81C784),
                  textColor: Color(0xff151515),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
