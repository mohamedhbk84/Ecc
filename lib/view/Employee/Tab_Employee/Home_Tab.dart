
import 'package:flutter/material.dart';
import 'package:project/shared/ComponentButton.dart';
import 'package:project/view/Employee/BranchEmployee/BranchEmployee.dart';

import '../../../constants.dart';
import 'Details_Employes.dart';
import 'SalaryEmployee.dart';
import 'attentanceEmploye.dart';

class HomeTabDetails extends StatefulWidget {
  @override
  _HomeTabDetailsState createState() => _HomeTabDetailsState();
}

class _HomeTabDetailsState extends State<HomeTabDetails>
    with TickerProviderStateMixin {
  List<Widget> tabs = [
    Text("Details"),
    Text("attentence"),
    Text("Vaction"),
    Text("salary"),
  ];

  List<Widget> screens = [
    DetailsEmployee(),
    // AttendenceScreen(),
    AttentanceEmploye(),
    // VacationsScrren(),
    BranchEmployee(),
    SalaryScreen()
  ];

  @override
  Widget build(BuildContext context) {
    TabController tabController =
        TabController(length: tabs.length, vsync: this);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: CustomAppBar(
            title: "Mohamed Ahmed \n ${tabs[0].toString()} ", search: false),
        //  CustomAppBarTab(title: "Mohamed Ahmed", search: false),
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
              labelStyle: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              labelPadding: EdgeInsets.only(top: 15, right: 15, bottom: 15),
              unselectedLabelColor: kGreyColor,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Divider(
                thickness: 1,
                color: Colors.grey[400],
              ),
            ),
            Expanded(
                child: TabBarView(
              controller: tabController,
              children: screens,
            ))
          ],
        ),
      ),
    );
  }
}
