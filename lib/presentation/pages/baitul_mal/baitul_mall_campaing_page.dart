import 'package:flutter/material.dart';

class BaitulMallCampaignPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: new Scaffold(
        body: new ListView(
          children: <Widget>[
            SizedBox(height: 20),
            new Container(
              height: 150.0,
              child: new Image.asset(
                'asset/images/r.png',
                fit: BoxFit.scaleDown,
              ),
            ),
            new Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: new Expanded(
                    child: new Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        new Text(
                          'Beasiswa 10.000 santri nusantara 2019',
                          style: new TextStyle(
                            fontSize: 18.0,
                            color: Colors.black,
                          ),
                        ),
                        new Text(
                          'Masjid Al-furqon,SURABAYA',
                          style:
                              new TextStyle(fontSize: 15.0, color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ),
                new Row(
                  children: <Widget>[
                    new Icon(
                      Icons.location_pin,
                      size: 40.0,
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
            Image.asset(
              'asset/images/garis1.png',
              height: 18,
              width: 100,
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
            SizedBox(height: 10),
            MaterialButton(
              onPressed: () {},
              shape: StadiumBorder(),
              color: Colors.green,
              child: Text("MULAI DONASI"),
            ),
            //new Bagianicon(),
            //new Keterangan(),
          ],
        ),
      ),
    );
  }
}
