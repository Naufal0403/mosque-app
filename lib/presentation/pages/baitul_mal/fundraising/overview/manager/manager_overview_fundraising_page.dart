import 'package:flutter/material.dart';
import 'package:flutter_api/presentation/constant/ui_constant.dart';

import '../../../../../components/domain/fundraising/team/fundraising_team_card.dart';
import '../../../../../components/global/chart/overview_fundraising_chart.dart';

class ManagerOverviewFundraisingPage extends StatelessWidget {
  const ManagerOverviewFundraisingPage({Key? key}) : super(key: key);

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
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey[400]!),
                  borderRadius: BorderRadius.circular(5),
                ),
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
                        child: Icon(Icons.monetization_on_outlined, color: UiConstant.primary),
                      ),
                    ),
                    SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Dana Masuk'),
                          Text(
                            'RP 1.000.000',
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 12),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
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
                    SizedBox(height: 4),
                    Text('Jumlah Tim'),
                    SizedBox(height: 4),
                    Text(
                      '170',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
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
                    SizedBox(height: 4),
                    Text('Jumlah Tim'),
                    SizedBox(height: 4),
                    Text(
                      '170',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
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
                    SizedBox(height: 4),
                    Text('Jumlah Tim'),
                    SizedBox(height: 4),
                    Text(
                      '170',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    )
                  ],
                )
              ]),
              SizedBox(height: 18),
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
              SizedBox(height: 12),
              Text(
                'Grafik Fundraising',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 12),
              Text('1 Agustus 2022 - 10 Agustus 2022'),
              SizedBox(height: 12),
              Text('Kategori Donatur'),
              SizedBox(height: 12),
              Column(
                children: [1, 2, 3, 4]
                    .map((e) => Column(
                          children: [
                            Row(
                              children: [
                                Text('Peorangan'),
                                Expanded(child: Container()),
                                Text(
                                  '75% ',
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  '(75)',
                                  style: TextStyle(
                                    color: Colors.grey[400],
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: 4),
                            LinearProgressIndicator(
                              value: 0.2,
                              color: Colors.green,
                              backgroundColor: Colors.grey[200],
                            ),
                            SizedBox(height: 12),
                          ],
                        ))
                    .toList(),
              ),
              SizedBox(height: 12),
              Text(
                'Daftar Tim Fundraising',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 12),
              Column(
                children: [1, 2, 3].map((e) => FundraisingTeamCard()).toList(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
