import 'package:flutter/material.dart';
import 'package:flutter_api/presentation/pages/masjid/jadwal_sholat/jadwal_sholat_edit_page.dart';

class JadwalImamListPage extends StatelessWidget {
  const JadwalImamListPage({Key? key}) : super(key: key);

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
            title: Text('Masjid > Jadwal Sholat'),
            backgroundColor: Color(0xFF043861),
            bottom: TabBar(
              tabs: [
                Tab(
                  text: 'Rawatib',
                ),
                Tab(
                  text: 'Jumat',
                ),
                Tab(
                  text: 'Ied',
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
        ),
      ),
    );
  }

  Widget tabBar(BuildContext context) {
    return TabBarView(
      children: [
        rawatib(context),
        rawatib(context),
        rawatib(context),
      ],
    );
  }

  Widget rawatib(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: DataTable(
        columnSpacing: 100,
        columns: [
          DataColumn(
            label: Text(
              'Sholat',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          DataColumn(
            label: Text(
              'Waktu',
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
              DataCell(Text('Subuh')),
              DataCell(Text('04.23')),
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
              DataCell(Text('Dzuhur')),
              DataCell(Text('11.45')),
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
              DataCell(Text('Ashar')),
              DataCell(Text('14.56')),
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
              DataCell(Text('Magrib')),
              DataCell(Text('17.55')),
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
              DataCell(Text('Isya')),
              DataCell(Text('19.10')),
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
}
