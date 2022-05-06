import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';
import 'package:project/shared/components.dart';
import 'package:project/view/Employee/addEmployee.dart';
import 'package:project/view/location/locations_screen.dart';
import 'package:project/view/notifications/all_notification_screen.dart';
import 'package:project/view/payroll/payroll_screen.dart';
import 'package:project/view/project/all_projects.dart';
import 'package:project/view/vehicle/all_vehicles_screen.dart';
import 'package:project/view/vocation/vacations.dart';
import 'package:project/view/workflow/workflow_screen.dart';

class MenuScreen extends StatefulWidget {
  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  final GlobalKey<ExpansionTileCardState> cardA = new GlobalKey();
  final GlobalKey<ExpansionTileCardState> cardD = new GlobalKey();
  final GlobalKey<ExpansionTileCardState> cardE = new GlobalKey();
  final GlobalKey<ExpansionTileCardState> cardF = new GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            color: Colors.white,
            child: Column(
              children: [
                close(),
                expansionTileCard(
                    key: cardA,
                    text: "hr",
                    image: "assets/images/Group 69796.png",
                    widget: Column(
                      children: [
                        columnTitle(
                            titleImage: "assets/images/location.png",
                            titleText: "Loction",
                            function: () {
                              navigateTo(context, Locations_Screen());
                            }),
                        columnTitle(
                            titleImage: "assets/images/car (2).png",
                            titleText: "Vechails",
                            function: () {
                              navigateTo(context, AllVehiclesScreen());
                            }),
                        columnTitle(
                            titleImage: "assets/images/Group 69796.png",
                            titleText: "Employee",
                            function: () {
                              navigateTo(context, AddEmployee());
                            }),
                        columnTitle(
                            titleImage: "assets/images/Group 69804.png",
                            titleText: "Payroll",
                            function: () {
                              navigateTo(context, Payroll_Screen());
                            }),
                        columnTitle(
                            titleImage: "assets/images/Group 69804.png",
                            titleText: "Vaction",
                            function: () {
                              navigateTo(context, VacationsScreen());
                            }),
                      ],
                    )),
                itemList(
                    image: "assets/images/Group 69796.png",
                    text: "Project",
                    function: () {
                      navigateTo(context, ProjectsScreen());
                    }),
                itemList(
                    image: "assets/images/Group 69796.png",
                    text: "WorkFlow",
                    function: () {
                      navigateTo(context, WorkflowScreen());
                    }),
                expansionTileCard(
                    key: cardD,
                    text: "Finance",
                    image: "assets/images/Group 69796.png",
                    widget: Column(
                      children: [
                        columnTitle(
                            titleImage: "assets/images/Group 69796.png",
                            titleText: "Loction",
                            function: () {}),
                      ],
                    )),
                expansionTileCard(
                    key: cardE,
                    text: "Purchasing",
                    image: "assets/images/Group 69796.png",
                    widget: Column(
                      children: [
                        columnTitle(
                            titleImage: "assets/images/distribution.png",
                            titleText: "SupplierList"),
                        columnTitle(
                            titleImage: "assets/images/customers.png",
                            titleText: "Customer"),
                      ],
                    )),
                expansionTileCard(
                    key: cardF,
                    text: "Report",
                    image: "assets/images/Group 69796.png",
                    widget: Column(
                      children: [
                        columnTitle(
                            titleImage: "assets/images/Group 69796.png",
                            titleText: "Loction",
                            function: () {}),
                      ],
                    )),
                itemList(
                    image: "assets/images/Group 69802.png",
                    text: "Notification",
                    function: () {
                      navigateTo(context, AllNotificationScreen());
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget close() => Padding(
        padding: EdgeInsets.only(
          top: 15,
          right: 3,
        ),
        child: Container(
          height: 45,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Center(
                child: IconButton(
                    icon: Icon(
                      Icons.close,
                      size: 26,
                    ),
                    onPressed: () {}),
              ),
            ],
          ),
        ),
      );

  Widget expansionTileCard(
          {String text, String image, Widget widget, Key key}) =>
      Padding(
        padding: EdgeInsets.only(top: 5, bottom: 5, left: 10, right: 10),
        child: Container(
          color: Colors.grey.shade200,
          // height: 70,
          child: ExpansionTileCard(
              key: key,
              leading: CircleAvatar(
                child: Image(
                  image: AssetImage(image),
                  fit: BoxFit.fill,
                ),
              ),
              title: Text(text),
              children: <Widget>[
                Divider(
                  thickness: 1.0,
                  height: 1.0,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16.0,
                        vertical: 8.0,
                      ),
                      child: widget),
                ),
              ]),
        ),
      );
  Widget columnTitle(
          {String titleImage, String titleText, Function function}) =>
      Padding(
        padding: EdgeInsets.only(
          left: 70,
          top: 8,
          bottom: 2,
        ),
        child: InkWell(
          onTap: function,
          child: Container(
            height: 30,
            child: Row(
              children: [
                Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      image: DecorationImage(
                        image: AssetImage(
                          titleImage,
                        ),
                      ),
                    )),
                SizedBox(
                  width: 8,
                ),
                Text(
                  titleText,
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ),
      );

  Widget itemList({String image, String text, Function function}) => Padding(
        padding: EdgeInsets.only(top: 10, bottom: 5),
        child: GestureDetector(
          onTap: function,
          child: Container(
            height: 60,
            width: MediaQuery.of(context).size.width - 20,
            decoration: BoxDecoration(color: Colors.grey.shade100),
            child: Center(
              child: Padding(
                padding: EdgeInsets.only(left: 20, right: 10),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 20,
                      child: Image(
                        image: AssetImage(image),
                        fit: BoxFit.fill,
                      ),
                    ),
                    // Container(
                    //   height: 30,
                    //   width: 30,
                    //   decoration: BoxDecoration(
                    //       borderRadius: BorderRadius.circular(30),
                    //       image: DecorationImage(image: AssetImage(image))),
                    // ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(text),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
}
