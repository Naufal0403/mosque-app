import 'package:flutter/material.dart';

class ProgramCreatePage extends StatelessWidget {
  const ProgramCreatePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: Text('Masjid > Program > Tambah'),
        backgroundColor: Color(0xFF043861),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: ListView(
          children: [
            Container(
              height: 450,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xffFAFAFA),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/unggah_berkas.png',
                    width: 50,
                  ),
                  const SizedBox(height: 20),
                  Text('Unggah berkas brosur'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
