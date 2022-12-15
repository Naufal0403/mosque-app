import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_api/presentation/utils/routes/route_name.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:iconly/iconly.dart';

class MenuFundraisingPage extends StatefulWidget {
  const MenuFundraisingPage({Key? key}) : super(key: key);

  @override
  State<MenuFundraisingPage> createState() => _MenuFundraisingPageState();
}

class _MenuFundraisingPageState extends State<MenuFundraisingPage> {
  final flutterSecureStorage = const FlutterSecureStorage();

  final Map<String, Function(BuildContext context)> mapRoleToNavigation = {
    'supervisor': (context) => Navigator.pushNamed(context, RouteName.SUPERVISOR_MENU_FUNDRAISING),
    'manager': (context) => Navigator.pushNamed(context, RouteName.MANAGER_MENU_FUNDRAISING),
    'staff': (context) => Navigator.pushNamed(context, RouteName.STAFF_OVERVIEW_FUNDRAISING),
  };

  @override
  void initState() {
    super.initState();
    redirectByRole();
  }

  Future<void> redirectByRole() async {
    final role = await flutterSecureStorage.read(key: 'role');
    if (mapRoleToNavigation[role] != null) {
      mapRoleToNavigation[role]!(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
    );
  }
}
