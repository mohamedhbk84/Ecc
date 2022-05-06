import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:some_calendar/some_calendar.dart';
import 'package:jiffy/jiffy.dart';

class AttentanceEmploye extends StatefulWidget {
  @override
  _AttentanceEmployeState createState() => _AttentanceEmployeState();
}

class _AttentanceEmployeState extends State<AttentanceEmploye> {
  List<Map<String, dynamic>> month = [
    {
      'title': 'Jun',
      'isSeleced': true,
    },
    {
      'title': 'Feb',
      'isSeleced': false,
    },
    {
      'title': 'Marth',
      'isSeleced': false,
    },
    {
      'title': 'Aug',
      'isSeleced': false,
    },
    {
      'title': 'Sep',
      'isSeleced': false,
    },
    {
      'title': 'Qcto',
      'isSeleced': false,
    },
  ];
  int selectedItem = 0;
  Widget listMonth({int index, bool selectecd}) => InkWell(
        onTap: () {
          setState(() {
            month[selectedItem]['isSeleced'] = false;
            selectedItem = index;
            month[selectedItem]['isSeleced'] = true;
          });
        },
        child: Container(
          height: 100,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10), topRight: Radius.circular(10))),
          child: Padding(
            padding: EdgeInsets.only(left: 5, right: 5, top: 10),
            child: Container(
              width: 70,
              height: 80,
              decoration: selectecd
                  ? BoxDecoration(
                      color: Color(0xffFCECE4),
                      border: Border.all(color: Colors.red),
                      borderRadius: BorderRadius.circular(20))
                  : BoxDecoration(
                      color: Color(0xffF1F1F1),
                      borderRadius: BorderRadius.circular(20)),
              child: Center(child: Text("${month[index]['title']}")),
            ),
          ),
        ),
      );

////////// init ///

  DateTime selectedDate = DateTime.now();
  // ignore: deprecated_member_use
  List<DateTime> selectedDates = List();
  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  void initState() {
    initializeDateFormatting();
    Intl.systemLocale =
        'en_En'; // to change the calendar format based on localization
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Row(
          children: [
            Expanded(
              child: SizedBox(
                height: 85.0,
                child: new ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: month.length,
                  itemBuilder: (BuildContext ctxt, int index) {
                    return listMonth(
                        index: index, selectecd: month[index]['isSeleced']);
                  },
                ),
              ),
            ),
          ],
        ),

        /////////// Body  (ListView)  ////////

        listAttentence(
            datecolor: Colors.black,
            dateFont: FontWeight.bold,
            detailsColor: Colors.grey.shade100,
            showDialog: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) => SomeCalendar(
                        mode: SomeMode.Range,
                        startDate: Jiffy().subtract(years: 3),
                        lastDate: Jiffy().add(months: 9),
                        selectedDates: selectedDates,
                        isWithoutDialog: false,
                        viewMode: ViewMode.EDIT,
                        primaryColor: Colors.blue,
                        done: (date) {
                          setState(() {
                            selectedDates = date;
                            showSnackbar(selectedDates.toString());
                          });
                        },
                      ));
            }),
        listAttentence(
            datecolor: Colors.black,
            dateFont: FontWeight.bold,
            detailsColor: Colors.blue.shade100,
            showDialog: () {}),
        listAttentence(
            datecolor: Colors.black,
            dateFont: FontWeight.bold,
            detailsColor: Colors.amber.shade100,
            showDialog: () {}),
      ],
    ));
  }

  bool showOver = false;
  Widget listAttentence(
          {Color datecolor,
          FontWeight dateFont,
          Color detailsColor,
          Function showDialog}) =>
      Padding(
        padding: EdgeInsets.only(
          top: 15,
          right: 10,
        ),
        child: Center(
          child: Container(
            height: 130,
            color: Colors.white,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 118,
                  color: Colors.white,
                  child:
                      // ignore: deprecated_member_use
                      RaisedButton(
                    color: Colors.white,
                    elevation: 0,
                    onPressed: showDialog,
                    child: Text(
                      "1-Jun-2021",
                      style: TextStyle(
                          color: datecolor, fontWeight: dateFont, fontSize: 14),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        color: detailsColor,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            bottomLeft: Radius.circular(20))),
                    child: Padding(
                      padding: EdgeInsets.only(left: 10, top: 10),
                      child: Column(
                        children: [
                          ////////// attend ///////////////////
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "Attend in",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "Leaving",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "Location - 1",
                                    style: TextStyle(
                                        color: Colors.grey[300],
                                        fontWeight: FontWeight.w800,
                                        fontSize: 15),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "Office",
                                    style: TextStyle(
                                        color: Colors.grey[300],
                                        fontWeight: FontWeight.w800,
                                        fontSize: 15),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          ///////// date ///
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.date_range,
                                color: Colors.grey[300],
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "09:00 Am -",
                                style: TextStyle(
                                    color: Colors.grey.shade300,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 2,
                              ),
                              Text(
                                "05:00 PM",
                                style: TextStyle(
                                    color: Colors.grey.shade300,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          //////////////// accept and reject /////
                          SizedBox(
                            height: 6,
                          ),
                          Row(
                            children: [
                              Text(
                                "OverTime :4 H",
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                              Spacer(),
                              Padding(
                                padding: EdgeInsets.only(right: 5),
                                child: Row(
                                  children: [
                                    Text(
                                      "Accept",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.green.shade300,
                                          fontWeight: FontWeight.bold,
                                          decoration: TextDecoration.underline),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "Reject",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.red,
                                          fontWeight: FontWeight.bold,
                                          decoration: TextDecoration.underline),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      );

  //////// add date Range Picker ////////
  // Dialog
  // Widget showDialog({context}) =>
  void showSnackbar(String x) {
    // ignore: deprecated_member_use
    scaffoldKey.currentState.showSnackBar(SnackBar(
      content: Text(x),
    ));
  }
}
