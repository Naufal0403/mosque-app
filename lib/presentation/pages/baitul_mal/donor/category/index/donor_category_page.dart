import 'package:flutter/material.dart';
import 'package:flutter_api/presentation/components/domain/donation/donor_category_card.dart';
import 'package:flutter_api/presentation/utils/routes/route_name.dart';

class DonorCategoryPage extends StatelessWidget {
  const DonorCategoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back,
            color: Color(0xff249A84),
          ),
        ),
        title: Text(
          'Kategori Donatur',
          style: TextStyle(
            color: Color(0xff249A84),
            fontWeight: FontWeight.w600,
          ),
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(18),
          child: Column(
            children: [
              DonorCategoryCard(),
              DonorCategoryCard(),
              DonorCategoryCard(),
              DonorCategoryCard(),
              DonorCategoryCard(),
              DonorCategoryCard(),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff249A84),
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        onPressed: () {
          Navigator.pushNamed(context, RouteName.ADD_DONOR_CATEGORY);
        },
      ),
    );
  }
}
