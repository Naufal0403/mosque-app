import 'package:flutter/material.dart';

import '../../../../constant/ui_constant.dart';

class FundraisingTeamCard extends StatelessWidget {
  const FundraisingTeamCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      margin: EdgeInsets.only(
        bottom: 12,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          BoxShadow(
            color: Colors.grey[300]!,
            offset: Offset(2, 2),
            blurRadius: 3,
          )
        ],
      ),
      child: Column(
        children: [
          Row(
            children: [
              Text('ID TIM : '),
              Text('001TIMF'),
              Expanded(child: Container()),
              Container(
                padding: EdgeInsets.symmetric(
                  vertical: 3,
                  horizontal: 4,
                ),
                decoration: BoxDecoration(
                  color: UiConstant.primary,
                ),
                child: Text(
                  'Sedang Berjalan',
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          ),
          SizedBox(height: 8),
          Text.rich(
            TextSpan(
              text: '#001TF ',
              style: TextStyle(fontSize: 16, color: UiConstant.primary, fontWeight: FontWeight.w600),
              children: [
                TextSpan(
                  text: 'Pembangunan Kubah Sisi Timur Masjid Al Akbar Surabaya',
                  style: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          SizedBox(height: 8),
          LinearProgressIndicator(
            value: 0.2,
            color: Colors.green,
            backgroundColor: Colors.grey[200],
          ),
          SizedBox(height: 8),
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
                  child: Text(
                    '70%',
                    style: TextStyle(color: UiConstant.primary),
                  ),
                ),
              ),
              SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Terkumpul'),
                    Text(
                      'RP 350.000.000',
                      style: TextStyle(color: UiConstant.primary),
                    ),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Target'),
                  Text('RP 400.000.000'),
                ],
              ),
            ],
          ),
          SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Donatur'),
                  SizedBox(height: 4),
                  Text(
                    '357',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Staff'),
                  SizedBox(height: 4),
                  Text(
                    '357',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Tugas'),
                  SizedBox(height: 4),
                  Text.rich(
                    TextSpan(
                      text: '90 / ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                      children: [
                        TextSpan(
                          text: '100',
                          style: TextStyle(
                            color: Colors.grey[400],
                            fontSize: 16,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
