import 'package:flutter/material.dart';
import 'package:flutter_api/presentation/pages/masjid/jadwal_sholat/jadwal_sholat_edit_page.dart';
import 'package:flutter_api/presentation/pages/pesantren/pendaftaran/pendaftaran_create_page.dart';

const List<String> list = <String>[
  'PTSA SD Putra',
  'PTSA SD Putri',
  'PTSA SMP Putra',
  'Reguler SD Putra',
  'Reguler SD Putri'
];

class PendaftaranListPage extends StatefulWidget {
  const PendaftaranListPage({Key? key}) : super(key: key);

  @override
  State<PendaftaranListPage> createState() => _PendaftaranListPageState();
}

class _PendaftaranListPageState extends State<PendaftaranListPage> {
  String dropdownValue = list.first;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            elevation: 0,
            title: Text('Pesantren > Pendaftaran'),
            backgroundColor: Color(0xFF043861),
            bottom: TabBar(
              tabs: [
                Tab(
                  text: 'Pembukaan',
                ),
                Tab(
                  text: 'Pendaftaran',
                ),
                Tab(
                  text: 'Penerimaan',
                ),
              ],
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            child: tabBar(context),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              Navigator.push(
                context,
                (MaterialPageRoute(
                  builder: (context) => PendaftaranCreatePage(),
                )),
              );
            },
            backgroundColor: Colors.blue,
            child: const Icon(
              Icons.add,
            ),
          ),
        ),
      ),
    );
  }

  Widget tabBar(BuildContext context) {
    return TabBarView(
      children: [
        pembukaan(context),
        pendaftaran(context),
        pendaftaran(context),
      ],
    );
  }

  Widget dropdownTextField() {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      child: DropdownButtonFormField<String>(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          contentPadding: const EdgeInsets.all(12),
        ),
        value: dropdownValue,
        icon: const Icon(Icons.arrow_drop_down),
        elevation: 0,
        style: const TextStyle(
          color: Colors.grey,
        ),
        onChanged: (String? value) {
          // This is called when the user selects an item.
          setState(() {
            dropdownValue = value!;
          });
        },
        items: list.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }

  Widget pembukaan(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: DataTable(
        columnSpacing: 100,
        columns: [
          DataColumn(
            label: Text(
              'Kelas',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          DataColumn(
            label: Text(
              'Angkatan',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
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
              DataCell(Text('PTSA SD Putra')),
              DataCell(Text('2020')),
              DataCell(Text('30')),
              DataCell(
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => JadwalSholatEditPage(),
                      ),
                    );
                  },
                  child: Icon(
                    Icons.edit,
                  ),
                ),
              ),
            ],
          ),
          DataRow(
            cells: [
              DataCell(Text('PTSA SD Putri')),
              DataCell(Text('2020')),
              DataCell(Text('30')),
              DataCell(
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
              ),
            ],
          ),
          DataRow(
            cells: [
              DataCell(Text('PTSA SMP Putra')),
              DataCell(Text('2020')),
              DataCell(Text('30')),
              DataCell(
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
              ),
            ],
          ),
          DataRow(
            cells: [
              DataCell(Text('Reguler SD Putra')),
              DataCell(Text('2020')),
              DataCell(Text('30')),
              DataCell(
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
              ),
            ],
          ),
          DataRow(
            cells: [
              DataCell(Text('Reguler SD Putri')),
              DataCell(Text('2020')),
              DataCell(Text('30')),
              DataCell(
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
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget pendaftaran(BuildContext context) {
    return Column(
      children: [
        dropdownTextField(),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: DataTable(
            columnSpacing: 100,
            columns: [
              DataColumn(
                label: Text(
                  'Kelas',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              DataColumn(
                label: Text(
                  'Angkatan',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
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
                  DataCell(Text('PTSA SD Putra')),
                  DataCell(Text('2020')),
                  DataCell(Text('30')),
                  DataCell(
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => JadwalSholatEditPage(),
                          ),
                        );
                      },
                      child: Icon(
                        Icons.edit,
                      ),
                    ),
                  ),
                ],
              ),
              DataRow(
                cells: [
                  DataCell(Text('PTSA SD Putri')),
                  DataCell(Text('2020')),
                  DataCell(Text('30')),
                  DataCell(
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
                  ),
                ],
              ),
              DataRow(
                cells: [
                  DataCell(Text('PTSA SMP Putra')),
                  DataCell(Text('2020')),
                  DataCell(Text('30')),
                  DataCell(
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
                  ),
                ],
              ),
              DataRow(
                cells: [
                  DataCell(Text('Reguler SD Putra')),
                  DataCell(Text('2020')),
                  DataCell(Text('30')),
                  DataCell(
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
                  ),
                ],
              ),
              DataRow(
                cells: [
                  DataCell(Text('Reguler SD Putri')),
                  DataCell(Text('2020')),
                  DataCell(Text('30')),
                  DataCell(
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
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
