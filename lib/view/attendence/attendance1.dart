import 'package:flutter/material.dart';
import 'package:project/shared/components.dart';
import 'package:project/view/reports/reports.dart';
import '../../constants.dart';
import 'attendence_screen.dart';

class Attendance1 extends StatefulWidget {
  const Attendance1({Key key}) : super(key: key);

  @override
  _Attendance1State createState() => _Attendance1State();
}

class _Attendance1State extends State<Attendance1>
    with TickerProviderStateMixin {
  List<Widget> tabs = [
    Text("Details"),
    Text("Attendance "),
    Text("Vacations"),
    Text("Salary"),
    Text("Tasks"),
    Text("Report"),
  ];
  List<Widget> screens = [
    Container(),
    AttendenceScreen(),
    Reports(),
    Container(),
    Container(),
    Container(),
  ];

  @override
  Widget build(BuildContext context) {
    TabController tabController =
        TabController(length: tabs.length, vsync: this);
    return Scaffold(
      appBar: myCustomAppBar(
          context: context,
          title: 'Mohamed Ahmed\n Attendance',
          haveNotf: true,
          canPop: true,
          haveBell: true),
      body: Column(
        children: [
          TabBar(
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorPadding: EdgeInsets.symmetric(horizontal: 10),
            controller: tabController,
            tabs: tabs,
            labelColor: kTitleColor,
            physics: BouncingScrollPhysics(),
            indicatorColor: kRedColor,
            isScrollable: true,
            unselectedLabelColor: kGreyColor,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Divider(
              thickness: 1,
              color: Colors.grey[200],
            ),
          ),
          Expanded(
              child: TabBarView(
            controller: tabController,
            children: screens,
          ))
        ],
      ),
    );
  }
}
