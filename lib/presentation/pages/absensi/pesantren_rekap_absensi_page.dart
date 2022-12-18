import 'package:flutter/material.dart';
import 'package:flutter_api/presentation/pages/masjid/pengurus/pengurus_create_page.dart';
import 'package:flutter_api/presentation/pages/masjid/pengurus/pengurus_edit_page.dart';

class PesantrenRekapAbsensi extends StatelessWidget {
  const PesantrenRekapAbsensi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: Text('Pesantren > Rekap Absensi'),
        backgroundColor: Color(0xFF043861),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            textField('Pelajaran'),
            listPengurus(context),
          ],
        ),
      ),
    );
  }

  Widget textField(String hint) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: TextStyle(
            color: Colors.grey,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          contentPadding: const EdgeInsets.all(12),
        ),
      ),
    );
  }

  Widget action(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //     builder: (context) => PengurusEditPage(),
            //   ),
            // );
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
              'NIS',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          DataColumn(
              label: Text(
            'Nama',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          )),
          DataColumn(
            label: Text(
              'Gender',
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
              DataCell(Text('20190709080001')),
              DataCell(Text('Lorem ipsum')),
              DataCell(Text('Dolor sit amet')),
              DataCell(
                action(context),
              ),
            ],
          ),
          DataRow(
            cells: [
              DataCell(Text('20190709080001')),
              DataCell(Text('Lorem ipsum')),
              DataCell(Text('Dolor sit amet')),
              DataCell(action(context)),
            ],
          ),
          DataRow(
            cells: [
              DataCell(Text('20190709080001')),
              DataCell(Text('Lorem ipsum')),
              DataCell(Text('Dolor sit amet')),
              DataCell(action(context)),
            ],
          ),
          DataRow(
            cells: [
              DataCell(Text('20190709080001')),
              DataCell(Text('Lorem ipsum')),
              DataCell(Text('Dolor sit amet')),
              DataCell(action(context)),
            ],
          ),
          DataRow(
            cells: [
              DataCell(Text('20190709080001')),
              DataCell(Text('Lorem ipsum')),
              DataCell(Text('Dolor sit amet')),
              DataCell(action(context)),
            ],
          ),
          DataRow(
            cells: [
              DataCell(Text('20190709080001')),
              DataCell(Text('Lorem ipsum')),
              DataCell(Text('Dolor sit amet')),
              DataCell(action(context)),
            ],
          ),
          DataRow(
            cells: [
              DataCell(Text('20190709080001')),
              DataCell(Text('Lorem ipsum')),
              DataCell(Text('Dolor sit amet')),
              DataCell(action(context)),
            ],
          ),
          DataRow(
            cells: [
              DataCell(Text('20190709080001')),
              DataCell(Text('Lorem ipsum')),
              DataCell(Text('Dolor sit amet')),
              DataCell(action(context)),
            ],
          ),
          DataRow(
            cells: [
              DataCell(Text('20190709080001')),
              DataCell(Text('Lorem ipsum')),
              DataCell(Text('Dolor sit amet')),
              DataCell(action(context)),
            ],
          ),
          DataRow(
            cells: [
              DataCell(Text('20190709080001')),
              DataCell(Text('Lorem ipsum')),
              DataCell(Text('Dolor sit amet')),
              DataCell(action(context)),
            ],
          ),
          DataRow(
            cells: [
              DataCell(Text('20190709080001')),
              DataCell(Text('Lorem ipsum')),
              DataCell(Text('Dolor sit amet')),
              DataCell(action(context)),
            ],
          ),
          DataRow(
            cells: [
              DataCell(Text('20190709080001')),
              DataCell(Text('Lorem ipsum')),
              DataCell(Text('Dolor sit amet')),
              DataCell(action(context)),
            ],
          ),
        ],
      ),
    );
  }
}
