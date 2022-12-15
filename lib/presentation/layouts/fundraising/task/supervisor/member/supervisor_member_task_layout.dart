import 'package:flutter/material.dart';
import 'package:flutter_api/presentation/components/domain/fundraising/task/fundraising_task_member_card.dart';

class SupervisorMemberTaskLayout extends StatelessWidget {
  const SupervisorMemberTaskLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(18),
        child: Column(
          children: [
            FundraisingTaskMemberCard(),
            FundraisingTaskMemberCard(),
          ],
        ),
      ),
    );
  }
}
