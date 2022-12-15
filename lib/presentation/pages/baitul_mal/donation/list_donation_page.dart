import 'package:flutter/material.dart';
import 'package:flutter_api/presentation/components/domain/donation/donation_card.dart';

import '../../../components/global/drawer/home_drawer.dart';

class ListDonationPage extends StatefulWidget {
  const ListDonationPage({Key? key}) : super(key: key);

  @override
  State<ListDonationPage> createState() => _ListDonationPageState();
}

class _ListDonationPageState extends State<ListDonationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const HomeDrawer(),
      appBar: AppBar(
        title: const Text('Donasi'),
        centerTitle: true,
        backgroundColor: Color(0xff043861),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(18),
          child: Column(
            children: [
              DonationCard(),
              DonationCard(),
              DonationCard(),
            ]
          ),
        ),
      ),
    );
  }
}
