import 'package:flutter/material.dart';
import 'package:flutter_api/presentation/pages/masjid/pengurus/pengurus_create_page.dart';
import 'package:flutter_api/presentation/pages/masjid/pengurus/pengurus_edit_page.dart';
import 'package:flutter_api/presentation/pages/pesantren/pengurus/pengurus_edit_page.dart';

class PengurusPesantrenListPage extends StatelessWidget {
  const PengurusPesantrenListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: Text('Pesantren > Pengurus'),
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
              builder: (context) => PengurusCreatePage(),
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
                builder: (context) => PengurusPesantrenEditPage(),
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
            'Peran',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          )),
          DataColumn(
            label: Text(
              'Kontak',
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
              DataCell(Text('Sutarjo')),
              DataCell(Text('Ketua Pesantren')),
              DataCell(Text('081208129090')),
              DataCell(
                action(context),
              ),
            ],
          ),
          DataRow(
            cells: [
              DataCell(Text('Baroto')),
              DataCell(Text('Sekretaris Pesantren')),
              DataCell(Text('081208129090')),
              DataCell(action(context)),
            ],
          ),
          DataRow(
            cells: [
              DataCell(Text('Abu Salamah')),
              DataCell(Text('Bendahara Pesantren')),
              DataCell(Text('081208129090')),
              DataCell(action(context)),
            ],
          ),
          DataRow(
            cells: [
              DataCell(Text('Sutarjo')),
              DataCell(Text('Ketua Pesantren')),
              DataCell(Text('081208129090')),
              DataCell(action(context)),
            ],
          ),
          DataRow(
            cells: [
              DataCell(Text('Baroto')),
              DataCell(Text('Sekretaris Pesantren')),
              DataCell(Text('081208129090')),
              DataCell(action(context)),
            ],
          ),
          DataRow(
            cells: [
              DataCell(Text('Abu Salamah')),
              DataCell(Text('Bendahara Pesantren')),
              DataCell(Text('081208129090')),
              DataCell(action(context)),
            ],
          ),
          DataRow(
            cells: [
              DataCell(Text('Sutarjo')),
              DataCell(Text('Ketua Pesantren')),
              DataCell(Text('081208129090')),
              DataCell(action(context)),
            ],
          ),
          DataRow(
            cells: [
              DataCell(Text('Baroto')),
              DataCell(Text('Sekretaris Pesantren')),
              DataCell(Text('081208129090')),
              DataCell(action(context)),
            ],
          ),
          DataRow(
            cells: [
              DataCell(Text('Abu Salamah')),
              DataCell(Text('Bendahara Pesantren')),
              DataCell(Text('081208129090')),
              DataCell(action(context)),
            ],
          ),
          DataRow(
            cells: [
              DataCell(Text('Sutarjo')),
              DataCell(Text('Ketua Pesantren')),
              DataCell(Text('081208129090')),
              DataCell(action(context)),
            ],
          ),
          DataRow(
            cells: [
              DataCell(Text('Baroto')),
              DataCell(Text('Sekretaris Pesantren')),
              DataCell(Text('081208129090')),
              DataCell(action(context)),
            ],
          ),
          DataRow(
            cells: [
              DataCell(Text('Abu Salamah')),
              DataCell(Text('Bendahara Pesantren')),
              DataCell(Text('081208129090')),
              DataCell(action(context)),
            ],
          ),
        ],
      ),
    );
  }
}
