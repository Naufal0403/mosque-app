import 'package:flutter/material.dart';
import 'package:flutter_api/presentation/utils/routes/route_name.dart';

class FundraisingTargetCard extends StatelessWidget {
  const FundraisingTargetCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(6),
      margin: EdgeInsets.only(
        bottom: 16,
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
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Checkbox(value: false, onChanged: (value) {}),
          SizedBox(width: 8),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(
                top: 12,
                bottom: 12,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text.rich(
                    TextSpan(
                      text: 'ID Tim : ',
                      style: TextStyle(color: Colors.grey),
                      children: [
                        TextSpan(
                          text: '001TIMF',
                          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 8),
                  Text.rich(
                    TextSpan(
                      text: '#001TF ',
                      style: TextStyle(fontSize: 16, color: Color(0xff249A84), fontWeight: FontWeight.w600),
                      children: [
                        TextSpan(
                          text: 'Pembangunan Kubah Sisi Timur Masjid Al Akbar Surabaya',
                          style: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 4),
                  Divider(),
                  SizedBox(height: 4),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Supervisor',
                        style: TextStyle(color: Colors.grey),
                      ),
                      Text(
                        'Abdillah',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  SizedBox(height: 4),
                  Divider(),
                  SizedBox(height: 4),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Mulai',
                            style: TextStyle(color: Colors.grey),
                          ),
                          Text(
                            '01/02/2022',
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Berhenti',
                            style: TextStyle(color: Colors.grey),
                          ),
                          Text(
                            '01/02/2022',
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 4),
                  Divider(),
                  SizedBox(height: 4),
                  Text(
                    'Staf',
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'Hermawan Pratama, Budi Permata, Ibnu Abdillah, Andri Sabar, Ari Ikhlas, Andi Fatah, Indra Dermawan, Sabar',
                  )
                ],
              ),
            ),
          ),
          SizedBox(width: 8),
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, RouteName.ADD_FUNDRAISING_TEAM);
            },
            icon: Icon(Icons.more_vert),
          )
        ],
      ),
    );
  }
}
