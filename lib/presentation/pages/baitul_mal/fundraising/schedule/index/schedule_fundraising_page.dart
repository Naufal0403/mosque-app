import 'package:flutter/material.dart';
import 'package:flutter_api/injection.dart';
import 'package:flutter_api/presentation/components/domain/fundraising_schedule/fundraising_schedule_card.dart';
import 'package:flutter_api/presentation/pages/baitul_mal/fundraising/schedule/index/cubit/schedule_fundraising_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../utils/routes/route_name.dart';

class ScheduleFundraisingPage extends StatefulWidget {
  ScheduleFundraisingPage({Key? key}) : super(key: key);

  @override
  State<ScheduleFundraisingPage> createState() => _ScheduleFundraisingPageState();
}

class _ScheduleFundraisingPageState extends State<ScheduleFundraisingPage> {
  final bloc = locator<ScheduleFundraisingCubit>();

  @override
  void initState() {
    super.initState();
    bloc.getAllFundraisingSchedule();
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
            'Schedule Fundraising',
            style: TextStyle(
              color: Color(0xff249A84),
              fontWeight: FontWeight.w600,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, RouteName.TARGET_FUNDRAISING);
              },
              icon: Icon(
                Icons.menu,
                color: Color(0xff249A84),
              ),
            )
          ],
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(18),
            child: BlocBuilder<ScheduleFundraisingCubit, ScheduleFundraisingState>(builder: (context, state) {
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
                  if (succcess.payload!.length > 0) {
                    return Column(
                      children: [
                        FundraisingScheduleCard(),
                        FundraisingScheduleCard(),
                        FundraisingScheduleCard(),
                        FundraisingScheduleCard(),
                      ],
                    );
                  } else {
                    return Center(
                      child: Text('empty state here'),
                    );
                  }
                },
              );
            }),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Color(0xff249A84),
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pushNamed(context, RouteName.ADD_SCHEDULE_FUNDRAISING).then(
              (value) {
                bloc.getAllFundraisingSchedule();
              },
            );
          },
        ),
      ),
    );
  }
}
