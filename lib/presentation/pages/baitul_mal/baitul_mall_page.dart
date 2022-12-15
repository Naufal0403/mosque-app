import 'package:flutter_api/presentation/pages/baitul_mal/baitul_mall_campaing_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BaitulMallPage extends StatefulWidget {
  BaitulMallPage({Key? key}) : super(key: key);

  @override
  _BaitulMallPageState createState() => _BaitulMallPageState();
}

class _BaitulMallPageState extends State<BaitulMallPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Baitul mal -> Donasi'),
        centerTitle: true,
        backgroundColor: Color(0xff043861),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: GridView(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey,
              ),
              child: Column(
                children: <Widget>[
                  Image.asset(
                    'asset/images/r.png',
                    height: 140,
                    width: 180,
                  ),
                  Text(
                    "Beasiswa 10.000 santri nusantara 2019",
                    style: GoogleFonts.bebasNeue(
                      fontSize: 20,
                    ),
                  ),
                  const Divider(
                    thickness: 2,
                    height: 10,
                    color: Colors.black,
                  ),
                  SizedBox(height: 25),
                  Image.asset(
                    'asset/images/garis1.png',
                    height: 25,
                    width: 250,
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Terkumpul : Rp.200.000.000 ',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        '    Target: Rp.350.000.000',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  MaterialButton(
                    onPressed: () {
                      // Navigator.pushReplacement(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) {
                      //       return DetailBaitulPage();
                      //     },
                      //   ),
                      // );
                    },
                    shape: StadiumBorder(),
                    color: Colors.green,
                    child: Text("DONASI SEKARANG"),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey,
              ),
              child: Column(
                children: [
                  Image.asset(
                    'asset/images/ifthar.png',
                    height: 140,
                    width: 180,
                  ),
                  Text(
                    "Penyedian iftar Romadhon 1444 H",
                    style: GoogleFonts.bebasNeue(
                      fontSize: 20,
                    ),
                  ),
                  const Divider(
                    thickness: 2,
                    height: 10,
                    color: Colors.black,
                  ),
                  SizedBox(height: 25),
                  Image.asset(
                    'asset/images/garis1.png',
                    height: 25,
                    width: 250,
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Terkumpul : Rp.20.000.000 ',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        '    Target: Rp.135.000.000',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  MaterialButton(
                    onPressed: () {},
                    shape: StadiumBorder(),
                    color: Colors.green,
                    child: Text("DONASI SEKARANG"),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey,
              ),
              child: Column(
                children: [
                  Image.asset(
                    'asset/images/butuhsarana.png',
                    height: 140,
                    width: 180,
                  ),
                  Text(
                    "Pembangunan sarana air bersih layak pakai dan konsumsi",
                    style: GoogleFonts.bebasNeue(
                      fontSize: 20,
                    ),
                  ),
                  const Divider(
                    thickness: 2,
                    height: 10,
                    color: Colors.black,
                  ),
                  SizedBox(height: 25),
                  Image.asset(
                    'asset/images/garis1.png',
                    height: 25,
                    width: 250,
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Terkumpul : Rp.225.000.000 ',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        '    Target: Rp.550.000.000',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  MaterialButton(
                    onPressed: () {},
                    shape: StadiumBorder(),
                    color: Colors.green,
                    child: Text("DONASI SEKARANG"),
                  ),
                ],
              ),
            ),
          ],
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1, mainAxisSpacing: 50, crossAxisSpacing: 50),
        ),
      ),
    );
  }
}
