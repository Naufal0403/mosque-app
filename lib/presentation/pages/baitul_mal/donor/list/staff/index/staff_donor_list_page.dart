import 'package:flutter/material.dart';
import 'package:flutter_api/presentation/components/domain/donation/staff/staff_donor_biodata_card.dart';
import 'package:flutter_api/presentation/constant/ui_constant.dart';
import 'package:flutter_api/presentation/utils/routes/route_name.dart';

class StaffDonorListPage extends StatelessWidget {
  const StaffDonorListPage({Key? key}) : super(key: key);

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
          'Daftar Donatur',
          style: TextStyle(
            color: UiConstant.primary,
            fontWeight: FontWeight.w600,
          ),
        ),
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, RouteName.STAFF_ADD_DONOR_BIODATA);
            },
            icon: Icon(
              Icons.add,
              color: UiConstant.primary,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(18),
          child: Column(
            children: [
              StaffDonorBiodataCard(),
              StaffDonorBiodataCard(),
              StaffDonorBiodataCard(),
              StaffDonorBiodataCard(),
            ],
          ),
        ),
      ),
    );
  }
}
