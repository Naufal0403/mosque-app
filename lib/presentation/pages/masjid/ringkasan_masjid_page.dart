import 'package:flutter/material.dart';

class RingkasanMasjidPage extends StatelessWidget {
  const RingkasanMasjidPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: Text('Masjid > Ringkasan'),
        backgroundColor: Color(0xFF043861),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                chart('Program', '190'),
                chart('Kas Masuk', '2.000.000'),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                chart('Kas Keluar', '900.000'),
                chart('Saldo', '7.720.000'),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Program Terbaru',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                Text(
                  'Lihat Semua >',
                  style: TextStyle(
                    // fontWeight: FontWeight.bold,
                    fontSize: 12,
                    decoration: TextDecoration.underline,
                    decorationThickness: 2,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              children: [
                program('Kajian magrib akhir pekan 1 & 3',
                    '11/01/2021 - 11/01/2021', 'Belum mulai'),
                program('Kajian magrib akhir pekan 1 & 3',
                    '11/01/2021 - 11/01/2021', 'Selesai'),
                program('Kajian magrib akhir pekan 1 & 3',
                    '11/01/2021 - 11/01/2021', 'Berlangsung'),
                program('Kajian magrib akhir pekan 1 & 3',
                    '11/01/2021 - 11/01/2021', 'Batal'),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Kas Terbaru',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                Text(
                  'Lihat Semua >',
                  style: TextStyle(
                    // fontWeight: FontWeight.bold,
                    fontSize: 12,
                    decoration: TextDecoration.underline,
                    decorationThickness: 2,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                kasTerbaru(),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget chart(String? title, String? amount) {
    return Row(
      children: [
        Container(
          width: 155,
          height: 90,
          margin: const EdgeInsets.all(5),
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            boxShadow: const [
              BoxShadow(
                color: Colors.grey,
                offset: Offset(
                  1.0,
                  1.0,
                ),
                blurRadius: 3,
                spreadRadius: 0.1,
              ), //BoxShadow
              BoxShadow(
                color: Colors.white,
                offset: Offset(0.0, 0.0),
                blurRadius: 0.0,
                spreadRadius: 0.0,
              ), //BoxShadow
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title!,
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  Spacer(),
                  Text(
                    amount!,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Container(
                decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      offset: Offset(
                        1.0,
                        1.0,
                      ),
                      blurRadius: 0,
                      spreadRadius: 0.1,
                    ), //BoxShadow
                    BoxShadow(
                      color: Colors.white,
                      offset: Offset(0.0, 0.0),
                      blurRadius: 0.0,
                      spreadRadius: 0.0,
                    ), //BoxShadow
                  ],
                ),
                child: Icon(
                  Icons.bar_chart_outlined,
                  size: 35,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }

  Widget program(String title, String date, String status) {
    return Container(
      height: 95,
      width: double.infinity,
      margin: const EdgeInsets.only(top: 15, left: 5, right: 5),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(
              1.0,
              1.0,
            ),
            blurRadius: 3,
            spreadRadius: 0.1,
          ), //BoxShadow
          BoxShadow(
            color: Colors.white,
            offset: Offset(0.0, 0.0),
            blurRadius: 0.0,
            spreadRadius: 0.0,
          ), //BoxShadow
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              Spacer(),
              Text(
                date,
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
              Spacer(),
              Container(
                height: 23,
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: status == "Batal"
                      ? Colors.red
                      : status == "Berlangsung"
                          ? Colors.yellow
                          : status == "Belum mulai"
                              ? Colors.orange
                              : Colors.green,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  status,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 10,
                  ),
                ),
              )
            ],
          ),
          Icon(
            Icons.more_vert,
            size: 30,
          )
        ],
      ),
    );
  }

  Widget kasTerbaru() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: DataTable(
        columns: [
          DataColumn(
            label: Text(
              'Tgl.',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          DataColumn(
              label: Text(
            'Uraian',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          )),
          DataColumn(
              label: Text(
            'Debet(Rp)',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          )),
          DataColumn(
              label: Text(
            'Kredit(Rp)',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          )),
          DataColumn(
              label: Text(
            'Saldo(Rp)',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          )),
        ],
        rows: [
          DataRow(
            cells: [
              DataCell(Text('11/01/2021')),
              DataCell(Text('Saldo Jan 2021')),
              DataCell(Text('8.000.000')),
              DataCell(Text('')),
              DataCell(Text('8000000')),
            ],
          ),
          DataRow(
            cells: [
              DataCell(Text('11/01/2021')),
              DataCell(Text('Bayar pasang AC imam')),
              DataCell(Text('')),
              DataCell(Text('200.000')),
              DataCell(Text('7.800.000')),
            ],
          ),
          DataRow(
            cells: [
              DataCell(Text('11/01/2021')),
              DataCell(Text('Dari hamba Alloh')),
              DataCell(Text('750.000')),
              DataCell(Text('')),
              DataCell(Text('8.550.000')),
            ],
          ),
          DataRow(
            cells: [
              DataCell(Text('11/01/2021')),
              DataCell(Text('Bayar listrik Jan 2021')),
              DataCell(Text('')),
              DataCell(Text('')),
              DataCell(Text('7.950.000')),
            ],
          ),
          DataRow(
            cells: [
              DataCell(Text('11/01/2021')),
              DataCell(Text('Bayar air Jan 2021')),
              DataCell(Text('')),
              DataCell(Text('230.000')),
              DataCell(Text('7.720.000')),
            ],
          ),
        ],
      ),
    );
  }
}
