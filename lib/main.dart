import 'package:flutter/material.dart';
import 'package:flutter_api/presentation/utils/routes/route_utils.dart';
import 'package:google_fonts/google_fonts.dart';
import 'injection.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  configureDependencies();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeMasjid',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.green,
        textTheme: GoogleFonts.nunitoSansTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      onGenerateRoute: RouteUtils.onGenerateRoute,
    );
  }
}
