import 'package:flutter/material.dart';
import 'package:flutter_api/presentation/components/global/button/primary_button.dart';
import 'package:flutter_api/presentation/constant/ui_constant.dart';

class StaffDonorBiodataCard extends StatelessWidget {
  const StaffDonorBiodataCard({Key? key}) : super(key: key);

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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Indra Kurniawan',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 8),
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Donasi'),
                    Text(
                      'RP 50.000.000',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: UiConstant.primary,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Tanggal'),
                    Text(
                      '29 Agustus 2022',
                      style: TextStyle(fontWeight: FontWeight.w600),
                    )
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 8),
          PrimaryButton(
            onTap: () {},
            isRounded: false,
            title: 'Lihat Data',
          )
        ],
      ),
    );
  }
}
