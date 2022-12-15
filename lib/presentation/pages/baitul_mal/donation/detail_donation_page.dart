import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../components/global/drawer/home_drawer.dart';

class DetailDonationPage extends StatelessWidget {
  const DetailDonationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const HomeDrawer(),
      appBar: AppBar(
        title: const Text('Profil'),
        centerTitle: true,
        backgroundColor: Color(0xff043861),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: CachedNetworkImageProvider('https://ichef.bbci.co.uk/news/976/cpsprodpb/5EBE/production/_120245242_pw13ne.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 8),
          Text('Beasiswa Santri Ngoding'),
          Row(
            children: [
              Icon(Icons.location_on),
              Text('Masjid')
            ],
          )
        ],
      ),
    );
  }
}
