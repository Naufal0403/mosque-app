import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_api/presentation/components/global/button/primary_button.dart';
import 'package:flutter_api/presentation/utils/routes/route_name.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:readmore/readmore.dart';

import '../../../../constant/ui_constant.dart';

class StaffTaskCard extends StatelessWidget {
  const StaffTaskCard({Key? key}) : super(key: key);

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
          Container(
            height: 150,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: CachedNetworkImageProvider(
                  'https://mui.or.id/wp-content/uploads/2021/12/images-26-2021-12-31T203936.738.jpeg',
                ),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(5),
            ),
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
          Divider(),
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(8),
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
          ),
          SizedBox(height: 6),
          Divider(),
          SizedBox(height: 6),
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Status'),
                    SizedBox(height: 4),
                    Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 3,
                        horizontal: 5,
                      ),
                      decoration: BoxDecoration(
                        color: UiConstant.primary,
                      ),
                      child: Text(
                        'Sedang Berjalan',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Verifikasi'),
                    Icon(
                      Icons.check_circle_outline,
                      color: UiConstant.primary,
                    )
                  ],
                ),
              )
            ],
          ),
          SizedBox(height: 6),
          Divider(),
          SizedBox(height: 6),
          Text('Staff'),
          ReadMoreText(
            'Hermawan Pratama, Budi Permata, Ibnu Abdillah, Andri Sabar, Ari Ikhlas, Andi Fatah, Indra Dermawan, Sabar Dermawan',
            trimLines: 2,
            colorClickableText: UiConstant.primary,
            trimMode: TrimMode.Line,
            trimCollapsedText: 'Show more',
            trimExpandedText: 'Show less',
            moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 6),
          PrimaryButton(
            onTap: () {
              Navigator.pushNamed(context, RouteName.STAFF_LIST_DONOR);
            },
            isRounded: false,
            title: 'Lihat Data',
          )
        ],
      ),
    );
  }
}
