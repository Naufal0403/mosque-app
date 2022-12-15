import 'package:flutter/material.dart';
import 'package:flutter_api/presentation/constant/ui_constant.dart';
import 'package:flutter_api/presentation/utils/routes/route_name.dart';
import 'package:iconly/iconly.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 54,
            left: 18,
            right: 18,
          ),
          child: Column(
            children: [
              Image.asset(
                'assets/images/demasjidlogo.png',
                width: double.infinity,
                height: 72,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 36),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, RouteName.PROFILE);
                },
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(18),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    gradient: LinearGradient(
                      colors: [
                        Color(0xff249A84),
                        Color(0xff83B866),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 75,
                        width: 75,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Center(
                          child: Icon(
                            IconlyLight.user,
                            color: Color(0xff249A84),
                            size: 36,
                          ),
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Shah Massoud',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 2),
                      Text(
                        'Takmir',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 36),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(IconlyBold.home, color: Colors.black),
                  SizedBox(width: 12),
                  Text(
                    'Dashboard',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 12),
              Theme(
                data: ThemeData().copyWith(dividerColor: Colors.transparent),
                child: ExpansionTile(
                  tilePadding: EdgeInsets.zero,
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.mosque, color: Colors.black),
                      SizedBox(width: 12),
                      Text(
                        'Masjid',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  children: UiConstant.masjiSubMenu
                      .map(
                        (e) => ListTile(
                          onTap: () {
                            Navigator.pushNamed(context, (e['page'] as String));
                          },
                          title: Row(
                            children: [
                              Icon(Icons.arrow_forward_sharp, color: Colors.black),
                              SizedBox(width: 12),
                              Text(
                                e['label'] ?? "-",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
              Theme(
                data: ThemeData().copyWith(dividerColor: Colors.transparent),
                child: ExpansionTile(
                  tilePadding: EdgeInsets.zero,
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.mosque, color: Colors.black),
                      SizedBox(width: 12),
                      Text(
                        'Pesantren',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  children: UiConstant.pesantrenSubMenu
                      .map(
                        (e) => ListTile(
                          onTap: () {
                            Navigator.pushNamed(context, (e['page'] as String));
                          },
                          title: Row(
                            children: [
                              Icon(Icons.arrow_forward_sharp, color: Colors.black),
                              SizedBox(width: 12),
                              Text(
                                e['label'] ?? "-",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
              Theme(
                data: ThemeData().copyWith(dividerColor: Colors.transparent),
                child: ExpansionTile(
                  tilePadding: EdgeInsets.zero,
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.mosque, color: Colors.black),
                      SizedBox(width: 12),
                      Text(
                        'Baitul Mal',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  children: UiConstant.baitulMalSubMenu
                      .map(
                        (e) => ListTile(
                          onTap: () {
                            Navigator.pushNamed(context, (e['page'] as String));
                          },
                          title: Row(
                            children: [
                              Icon(Icons.arrow_forward_sharp, color: Colors.black),
                              SizedBox(width: 12),
                              Text(
                                e['label'] ?? "-",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
              Theme(
                data: ThemeData().copyWith(dividerColor: Colors.transparent),
                child: ExpansionTile(
                  tilePadding: EdgeInsets.zero,
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.dashboard_customize, color: Colors.black),
                      SizedBox(width: 12),
                      Text(
                        'TPQ / TPA',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  children: [],
                ),
              ),
              Theme(
                data: ThemeData().copyWith(dividerColor: Colors.transparent),
                child: ExpansionTile(
                  tilePadding: EdgeInsets.zero,
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.shopify, color: Colors.black),
                      SizedBox(width: 12),
                      Text(
                        'Muamalah',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  children: [],
                ),
              ),
              Theme(
                data: ThemeData().copyWith(dividerColor: Colors.transparent),
                child: ExpansionTile(
                  tilePadding: EdgeInsets.zero,
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.info, color: Colors.black),
                      SizedBox(width: 12),
                      Text(
                        'Info',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  children: [],
                ),
              ),
              Theme(
                data: ThemeData().copyWith(dividerColor: Colors.transparent),
                child: ExpansionTile(
                  tilePadding: EdgeInsets.zero,
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.settings, color: Colors.black),
                      SizedBox(width: 12),
                      Text(
                        'Settings',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  children: [],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
