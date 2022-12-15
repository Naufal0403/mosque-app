import 'package:flutter/material.dart';
import 'package:flutter_api/presentation/constant/ui_constant.dart';

class FundraisingTaskListCard extends StatelessWidget {
  const FundraisingTaskListCard({Key? key}) : super(key: key);

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
          SizedBox(height: 8),
          Text(
            'Kirim surat pengajuan ke 15 UMKM di Surabaya',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 8),
          Divider(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Tugas',
                style: TextStyle(color: Colors.grey[400]),
              ),
              SizedBox(width: 4),
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
          )
        ],
      ),
    );
  }
}
