import 'package:flutter/material.dart';
import 'package:flutter_api/presentation/pages/absensi/pesantren_rekap_absensi_page.dart';
import 'package:flutter_api/presentation/pages/masjid/pengurus/pengurus_create_page.dart';
import 'package:flutter_api/presentation/pages/masjid/pengurus/pengurus_edit_page.dart';

class PesantrenAbsensiPage extends StatelessWidget {
  const PesantrenAbsensiPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: Text('Pesantren > Absensi'),
        backgroundColor: Color(0xFF043861),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            textField('Tanggal'),
            textField('Kelas'),
            textField('Pelajaran'),
            const SizedBox(height: 20),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Hadir : 30'),
                    Text('Izin : 4'),
                    Text('Total Siswa : 40'),
                  ],
                ),
                const SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Sakit : 5'),
                    Spacer(),
                    Text('Alpa : 1'),
                    Spacer(),
                  ],
                ),
              ],
            ),
            listPengurus(context),
          ],
        ),
      ),
      floatingActionButton: Container(
        width: 120,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.blue,
        ),
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              (MaterialPageRoute(
                builder: (context) => PesantrenRekapAbsensi(),
              )),
            );
          },
          child: Center(
            child: Text(
              'Rekap Absensi',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
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
