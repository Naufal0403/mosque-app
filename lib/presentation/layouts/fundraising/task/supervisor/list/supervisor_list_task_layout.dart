import 'package:flutter/material.dart';
import 'package:flutter_api/presentation/components/domain/fundraising/task/fundraising_task_list_card.dart';

class SupervisorListTaskLayout extends StatelessWidget {
  const SupervisorListTaskLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(18),
        child: Column(
          children: [
            FundraisingTaskListCard(),
            FundraisingTaskListCard(),
          ],
        ),
      ),
    );
  }
}
