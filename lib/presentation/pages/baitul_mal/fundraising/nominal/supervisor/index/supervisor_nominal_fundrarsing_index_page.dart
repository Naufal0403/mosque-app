import 'package:flutter/material.dart';
import 'package:flutter_api/presentation/components/domain/fundraising/nominal/fundraising_nominal_card.dart';
import 'package:flutter_api/presentation/constant/ui_constant.dart';
import 'package:flutter_api/presentation/utils/routes/route_name.dart';

class SupervisorNominalFundraisingIndexPage extends StatelessWidget {
  const SupervisorNominalFundraisingIndexPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Color(0xff249A84),
          ),
        ),
        title: Text(
          'Target Nominal',
          style: TextStyle(
            color: Color(0xff249A84),
            fontWeight: FontWeight.w600,
          ),
        ),
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.all(18),
        child: Column(
          children: [
            FundraisingNominalCard(),
            FundraisingNominalCard(),
            FundraisingNominalCard(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: UiConstant.primary,
        onPressed: () {
          Navigator.pushNamed(context, RouteName.SUPERVISOR_DIVISION_NOMINAL_ADD);
        },
        child: Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}
