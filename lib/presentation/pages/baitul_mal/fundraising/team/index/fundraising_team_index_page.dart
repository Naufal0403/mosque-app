import 'package:flutter/material.dart';
import 'package:flutter_api/presentation/constant/ui_constant.dart';
import 'package:flutter_api/presentation/utils/routes/route_name.dart';

import '../../../../../components/domain/fundraising/team/fundraising_team_card.dart';

class FundraisingTeamIndexPage extends StatelessWidget {
  const FundraisingTeamIndexPage({Key? key}) : super(key: key);

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
          'Tambah Target Fundraising',
          style: TextStyle(
            color: Color(0xff249A84),
            fontWeight: FontWeight.w600,
          ),
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(18),
          child: Column(
            children: [1, 2, 3, 4].map((e) => FundraisingTeamCard()).toList(),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: UiConstant.primary,
        onPressed: () {
          Navigator.pushNamed(context, RouteName.ADD_FUNDRAISING_TEAM);
        },
        child: Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}
