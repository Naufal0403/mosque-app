import 'package:flutter/material.dart';
import 'package:flutter_api/presentation/pages/masjid/pengurus/pengurus_create_page.dart';
import 'package:flutter_api/presentation/pages/masjid/pengurus/pengurus_edit_page.dart';
import 'package:flutter_api/presentation/pages/pesantren/kelas/kelas_create_page.dart';
import 'package:flutter_api/presentation/pages/pesantren/kelas/kelas_edit_page.dart';
import 'package:flutter_api/presentation/pages/pesantren/pelajaran/pelajaran_create_page.dart';
import 'package:flutter_api/presentation/pages/pesantren/pelajaran/pelajaran_edit_page.dart';

class PelajaranListPage extends StatelessWidget {
  const PelajaranListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: Text('Pesantren > Pelajaran'),
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
              builder: (context) => PelajaranCreatePage(),
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
                builder: (context) => PelajaranEditPage(),
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
              'Kategori',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          DataColumn(
              label: Text(
            'Nama Pelajaran',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          )),
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
              'Urutan',
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
              DataCell(Text('Tahfidz/Hafalan Qur’an')),
              DataCell(Text('Agama')),
              DataCell(Text('45 menit')),
              DataCell(Text('1')),
              DataCell(
                action(context),
              ),
            ],
          ),
          DataRow(
            cells: [
              DataCell(Text('Tahfidz/Hafalan Qur’an')),
              DataCell(Text('Agama')),
              DataCell(Text('45 menit')),
              DataCell(Text('2')),
              DataCell(action(context)),
            ],
          ),
          DataRow(
            cells: [
              DataCell(Text('Tahfidz/Hafalan Qur’an')),
              DataCell(Text('Agama')),
              DataCell(Text('30 menit')),
              DataCell(Text('3')),
              DataCell(action(context)),
            ],
          ),
          DataRow(
            cells: [
              DataCell(Text('Tahfidz/Hafalan Hadis')),
              DataCell(Text('Agama')),
              DataCell(Text('30 menit')),
              DataCell(Text('4')),
              DataCell(action(context)),
            ],
          ),
          DataRow(
            cells: [
              DataCell(Text('Tahfidz/Hafalan Hadis')),
              DataCell(Text('Agama')),
              DataCell(Text('30 menit')),
              DataCell(Text('5')),
              DataCell(action(context)),
            ],
          ),
        ],
      ),
    );
  }
}
