import 'package:flutter/material.dart';
import 'package:flutter_api/presentation/constant/ui_constant.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class FundraisingNominalCard extends StatelessWidget {
  const FundraisingNominalCard({Key? key}) : super(key: key);

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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '01',
                style: TextStyle(fontSize: 16),
              ),
              PopupMenuButton(
                onSelected: (value) {},
                itemBuilder: (context) => [
                  PopupMenuItem(
                    value: 'delete',
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.delete, color: Colors.red),
                        SizedBox(width: 4),
                        Text('Hapus', style: TextStyle(color: Colors.red))
                      ],
                    ),
                  ),
                  PopupMenuItem(
                    value: 'delete',
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [Icon(Icons.edit), SizedBox(width: 4), Text('Edit')],
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 12),
          Text(
            'Ayman Al-zawahiri',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 12),
          SizedBox(
            height: 10,
            child: LinearPercentIndicator(
              padding: EdgeInsets.zero,
              width: MediaQuery.of(context).size.width - 64,
              lineHeight: 5,
              percent: 0.1,
              backgroundColor: Colors.grey[200],
              progressColor: UiConstant.primary,
            ),
          ),
          SizedBox(height: 12),
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  border: Border.all(color: UiConstant.primary),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Text(
                  '100%',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: UiConstant.primary,
                  ),
                ),
              ),
              SizedBox(width: 8),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Terkumpul'),
                    Text(
                      'RP 53.000.000',
                      style: TextStyle(color: UiConstant.primary),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Target'),
                  Text('RP 53.000.000'),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
