import 'package:flutter/material.dart';
import 'package:flutter_api/presentation/constant/ui_constant.dart';
import 'package:flutter_api/presentation/layouts/fundraising/task/supervisor/list/supervisor_list_task_layout.dart';
import 'package:flutter_api/presentation/layouts/fundraising/task/supervisor/member/supervisor_member_task_layout.dart';
import 'package:flutter_api/presentation/utils/routes/route_name.dart';

class SupervisorIndexTaskPage extends StatefulWidget {
  const SupervisorIndexTaskPage({Key? key}) : super(key: key);

  @override
  State<SupervisorIndexTaskPage> createState() => _SupervisorIndexTaskPageState();
}

class _SupervisorIndexTaskPageState extends State<SupervisorIndexTaskPage> {
  int currentTab = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: UiConstant.primary,
            ),
          ),
          title: Text(
            'Tugas Per Staff',
            style: TextStyle(
              color: UiConstant.primary,
              fontWeight: FontWeight.w600,
            ),
          ),
          elevation: 0,
          bottom: TabBar(
            onTap: (value) {
              setState(() {
                currentTab = value;
              });
            },
            labelColor: UiConstant.primary,
            indicatorColor: UiConstant.primary,
            labelStyle: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
            tabs: [
              Tab(text: 'Daftar Tugas'),
              Tab(text: 'Anggota'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            SupervisorListTaskLayout(),
            SupervisorMemberTaskLayout(),
          ],
        ),
        floatingActionButton: currentTab == 0
            ? FloatingActionButton(
                backgroundColor: UiConstant.primary,
                onPressed: () {
                  Navigator.pushNamed(context, RouteName.SUPERVISOR_DIVISION_TASK_ADD);
                },
                child: Icon(Icons.add, color: Colors.white),
              )
            : Container(),
      ),
    );
  }
}
