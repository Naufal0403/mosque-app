import 'package:flutter/material.dart';
import 'package:flutter_api/presentation/pages/masjid/program/program_create_page.dart';

class ProgramListPage extends StatelessWidget {
  const ProgramListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: Text('Masjid > Program'),
        backgroundColor: Color(0xFF043861),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: listProgram(context),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            (MaterialPageRoute(
              builder: (context) => ProgramCreatePage(),
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

  Widget listProgram(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: DataTable(
        columns: [
          DataColumn(
            label: Text(
              'Tgl. Mulai',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          DataColumn(
              label: Text(
            'Tgl. Usai',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          )),
          DataColumn(
              label: Text(
            'Uraian',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          )),
          DataColumn(
              label: Text(
            'Status',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          )),
          DataColumn(
              label: Text(
            'Aksi',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          )),
        ],
        rows: [
          DataRow(
            cells: [
              DataCell(Text('11/01/2021')),
              DataCell(Text('11/01/2021')),
              DataCell(Text('Kajian maghrib pekan 1 & 3 ')),
              DataCell(Text('Belum mulai')),
              DataCell(action(context)),
            ],
          ),
          DataRow(
            cells: [
              DataCell(Text('11/01/2021')),
              DataCell(Text('11/01/2021')),
              DataCell(Text('Santunan yatim & janda')),
              DataCell(Text('Selesai')),
              DataCell(action(context)),
            ],
          ),
          DataRow(
            cells: [
              DataCell(Text('11/01/2021')),
              DataCell(Text('11/01/2021')),
              DataCell(Text('Sunat massal 2021')),
              DataCell(Text('Selesai')),
              DataCell(action(context)),
            ],
          ),
          DataRow(
            cells: [
              DataCell(Text('11/01/2021')),
              DataCell(Text('11/01/2021')),
              DataCell(Text('Kajian subuh pekan 2 & 4')),
              DataCell(Text('Berlangsung')),
              DataCell(action(context)),
            ],
          ),
          DataRow(
            cells: [
              DataCell(Text('11/01/2021')),
              DataCell(Text('11/01/2021')),
              DataCell(Text('Pasar bahagia pekan 4 Jan 2021')),
              DataCell(Text('Batal')),
              DataCell(action(context)),
            ],
          ),
          DataRow(
            cells: [
              DataCell(Text('11/01/2021')),
              DataCell(Text('11/01/2021')),
              DataCell(Text('Pasar bahagia pekan 4 Jan 2021')),
              DataCell(Text('Batal')),
              DataCell(action(context)),
            ],
          ),
          DataRow(
            cells: [
              DataCell(Text('11/01/2021')),
              DataCell(Text('11/01/2021')),
              DataCell(Text('Pasar bahagia pekan 4 Jan 2021')),
              DataCell(Text('Batal')),
              DataCell(action(context)),
            ],
          ),
          DataRow(
            cells: [
              DataCell(Text('11/01/2021')),
              DataCell(Text('11/01/2021')),
              DataCell(Text('Pasar bahagia pekan 4 Jan 2021')),
              DataCell(Text('Batal')),
              DataCell(action(context)),
            ],
          ),
          DataRow(
            cells: [
              DataCell(Text('11/01/2021')),
              DataCell(Text('11/01/2021')),
              DataCell(Text('Pasar bahagia pekan 4 Jan 2021')),
              DataCell(Text('Batal')),
              DataCell(action(context)),
            ],
          ),
          DataRow(
            cells: [
              DataCell(Text('11/01/2021')),
              DataCell(Text('11/01/2021')),
              DataCell(Text('Pasar bahagia pekan 4 Jan 2021')),
              DataCell(Text('Batal')),
              DataCell(action(context)),
            ],
          ),
          DataRow(
            cells: [
              DataCell(Text('11/01/2021')),
              DataCell(Text('11/01/2021')),
              DataCell(Text('Pasar bahagia pekan 4 Jan 2021')),
              DataCell(Text('Batal')),
              DataCell(action(context)),
            ],
          ),
        ],
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
}
