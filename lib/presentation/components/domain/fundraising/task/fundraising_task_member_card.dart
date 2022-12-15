import 'package:flutter/material.dart';

class FundraisingTaskMemberCard extends StatelessWidget {
  const FundraisingTaskMemberCard({Key? key}) : super(key: key);

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
                '1',
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
                      children: [
                        Icon(Icons.edit),
                        SizedBox(width: 4),
                        Text('Edit')
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 8),
          Text(
            'Hermawan Putra',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 8),
          Divider(),
          Text.rich(
            TextSpan(
              text: 'Tugas ',
              style: TextStyle(
                color: Colors.grey[400],
              ),
              children: [
                TextSpan(
                  text: '15 / ',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                TextSpan(
                  text: '30',
                  style: TextStyle(
                    color: Colors.grey[400],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
