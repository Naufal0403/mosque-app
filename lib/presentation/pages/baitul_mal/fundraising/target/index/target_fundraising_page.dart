import 'package:flutter/material.dart';
import 'package:flutter_api/injection.dart';
import 'package:flutter_api/presentation/components/domain/fundraising/fundraising_target_card.dart';
import 'package:flutter_api/presentation/pages/baitul_mal/fundraising/target/index/cubit/target_fundraising_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../utils/routes/route_name.dart';

class TargetFundraisingPage extends StatefulWidget {
  const TargetFundraisingPage({Key? key}) : super(key: key);

  @override
  State<TargetFundraisingPage> createState() => _TargetFundraisingPageState();
}

class _TargetFundraisingPageState extends State<TargetFundraisingPage> {
  final bloc = locator<TargetFundraisingCubit>();

  @override
  void initState() {
    super.initState();
    bloc.getAllTargetFundraising();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => bloc,
      child: Scaffold(
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
            'Target Fundraising',
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
            child: BlocBuilder<TargetFundraisingCubit, TargetFundraisingState>(
              builder: (context, state) {
                return state.map(
                  initial: (initial) {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  },
                  loading: (loading) {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  },
                  error: (error) {
                    return Center(
                      child: Text(error.message),
                    );
                  },
                  succcess: (succcess) {
                    if (succcess.payload.length > 0) {
                      return Column(
                        children: [
                          FundraisingTargetCard(),
                          FundraisingTargetCard(),
                          FundraisingTargetCard(),
                        ],
                      );
                    } else {
                      return Center(
                        child: Text('empty state here'),
                      );
                    }
                  },
                );
              },
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
            Navigator.pushNamed(context, RouteName.ADD_TARGET_FUNDRAISING);
          },
        ),
      ),
    );
  }
}
