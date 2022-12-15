import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_api/presentation/components/domain/fundraising/nominal/fundraising_nominal_card.dart';
import 'package:flutter_api/presentation/components/domain/fundraising/task/fundraising_task_member_card.dart';
import 'package:flutter_api/presentation/components/global/chart/home_chart.dart';
import 'package:flutter_api/presentation/components/global/chart/overview_fundraising_chart.dart';
import 'package:flutter_api/presentation/constant/ui_constant.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../../../../utils/routes/route_name.dart';

class SupervisorOverviewFundraisingPage extends StatelessWidget {
  const SupervisorOverviewFundraisingPage({Key? key}) : super(key: key);

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
          'Overview Fundraising',
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
            children: [
              Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      border: Border.all(color: UiConstant.primary),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Center(
                      child: Icon(Icons.monetization_on_outlined, color: UiConstant.primary),
                    ),
                  ),
                  SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Terkumpul'),
                        Text(
                          'RP. 1.000.000',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
              Divider(),
              Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      border: Border.all(color: UiConstant.primary),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Center(
                      child: Icon(CupertinoIcons.chart_pie, color: UiConstant.primary),
                    ),
                  ),
                  SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Pengumpulan Dana'),
                        Text(
                          '30%',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
              Divider(),
              Row(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            border: Border.all(color: UiConstant.primary),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Center(
                            child: Icon(Icons.people_alt, color: UiConstant.primary),
                          ),
                        ),
                        SizedBox(width: 12),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Staff'),
                              Text(
                                '325',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: 12),
                  Expanded(
                    child: Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            border: Border.all(color: UiConstant.primary),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Center(
                            child: Icon(CupertinoIcons.doc, color: UiConstant.primary),
                          ),
                        ),
                        SizedBox(width: 12),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Tugas'),
                              Text(
                                '157',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 24),
              Text(
                'Grafik Fundraising',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 12),
              Text('1 Agustus 2022 - 10 Agustus 2022'),
              SizedBox(height: 12),
              Container(
                width: double.infinity,
                height: 250,
                child: OverviewFundraisingChart(),
              ),
              SizedBox(height: 18),
              Text(
                'Pencapaian Tugas Harian',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 12),
              Text('1 Agustus 2022 - 10 Agustus 2022'),
              SizedBox(height: 12),
              Container(
                width: double.infinity,
                height: 250,
                child: HomeChart(),
              ),
              SizedBox(height: 24),
              Text(
                'Data Perkembangan Anggota Time',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 12),
              Column(
                children: [1, 2, 3].map((e) => FundraisingNominalCard()).toList(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
