import 'package:flutter/material.dart';
import 'package:flutter_api/presentation/pages/masjid/pengurus/pengurus_create_page.dart';
import 'package:flutter_api/presentation/pages/masjid/pengurus/pengurus_edit_page.dart';
import 'package:flutter_api/presentation/pages/pesantren/kelas/kelas_create_page.dart';
import 'package:flutter_api/presentation/pages/pesantren/kelas/kelas_edit_page.dart';

class KelasListPage extends StatelessWidget {
  const KelasListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: Text('Pesantren > Kelas'),
        backgroundColor: Color(0xFF043861),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: listPengurus(context),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            (MaterialPageRoute(
              builder: (context) => KelasCreatePage(),
            )),
          );
        },
        backgroundColor: Colors.blue,
        child: const Icon(
          Icons.add,
        ),
      ),
    );
  }

  Widget action(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => KelasEditPage(),
              ),
            );
          },
          child: Icon(
            Icons.edit,
          ),
        ),
        InkWell(
          onTap: () {
            showDialog(
                context: context,
                builder: (_) => AlertDialog(
                      title: Text(
                        'Hapus data ini ?',
                      ),
                      content: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'Ya',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                          const SizedBox(width: 10),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'Tidak',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                    ));
          },
          child: Icon(
            Icons.delete,
            color: Colors.red,
          ),
        ),
      ],
    );
  }

  Widget listPengurus(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: DataTable(
        columns: [
          DataColumn(
            label: Text(
              'Nama',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          DataColumn(
              label: Text(
            'Tingkat',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          )),
          DataColumn(
            label: Text(
              'Kapasitas',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          DataColumn(
            label: Text(
              'Durasi',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          DataColumn(
            label: Text(
              'Aksi',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
        rows: [
          DataRow(
            cells: [
              DataCell(Text('Tahfidz Sabtu Ahad')),
              DataCell(Text('SD, SMP')),
              DataCell(Text('30')),
              DataCell(Text('6 bulan')),
              DataCell(
                action(context),
              ),
            ],
          ),
          DataRow(
            cells: [
              DataCell(Text('Tahfidz Reguler')),
              DataCell(Text('SD, SMP')),
              DataCell(Text('30')),
              DataCell(Text('6 bulan')),
              DataCell(action(context)),
            ],
          ),
          DataRow(
            cells: [
              DataCell(Text('Pesma Reguler')),
              DataCell(Text('Kuliah')),
              DataCell(Text('20')),
              DataCell(Text('6 bulan')),
              DataCell(action(context)),
            ],
          ),
          DataRow(
            cells: [
              DataCell(Text('Tahfidz Sabtu Ahad')),
              DataCell(Text('Kuliah')),
              DataCell(Text('20')),
              DataCell(Text('6 bulan')),
              DataCell(action(context)),
            ],
          ),
          DataRow(
            cells: [
              DataCell(Text('Tahfidz Sabtu Ahad')),
              DataCell(Text('Kuliah')),
              DataCell(Text('20')),
              DataCell(Text('6 bulan')),
              DataCell(action(context)),
            ],
          ),
        ],
      ),
    );
  }
}
