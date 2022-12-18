import 'package:flutter/material.dart';

class RingkasanPesantren extends StatelessWidget {
  const RingkasanPesantren({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: Text('Pesantren > Ringkasan'),
        backgroundColor: Color(0xFF043861),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                chart('Kelas', '34'),
                chart('Santri', '512'),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                chart('Guru', '512'),
                chart('Kas Masuk', '2.000.000'),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                chart('Kas Keluar', '900.000'),
                chart('Saldo', '7.720.000'),
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
}
