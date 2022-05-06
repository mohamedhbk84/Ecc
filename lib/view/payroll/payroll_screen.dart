import 'package:flutter/material.dart';
import 'package:project/shared/ComponentButton.dart';
import 'package:project/view/payroll/payroll%20_sheet_1.dart';
import '../../constants.dart';

class Payroll_Screen extends StatelessWidget {
  const Payroll_Screen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Payroll'),
        centerTitle: true,
        backgroundColor: kPrimaryColor,
        elevation: 0,
      ),
      body: Container(
        color: Colors.grey[100],
        width: _size.width,
        height: _size.height,
        child: Stack(
          children: [
            Positioned(
              right: 0,
              left: 0,
              bottom: 0,
              child: Container(
                padding: EdgeInsets.only(left: 8, right: 8),
                height: _size.height * .55,
                color: Colors.grey[100],
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 35),
                  child: Column(
                    children: [
                      Expanded(
                        child: ListView.builder(
                            itemCount: 100,
                            itemBuilder: (context, pos) {
                              return itemList(
                                  context: context,
                                  function: () {
                                    navigateTo(context, Payroll_Sheet_1());
                                  });
                            }),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: _size.height * .35,
              decoration: const BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadiusDirectional.only(
                    bottomStart: Radius.circular(20),
                    bottomEnd: Radius.circular(20)),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Stack(
                        children: <Widget>[
                          InkWell(
                            onTap: () {
                              showDatePicker(
                                context: context,
                                initialDate: DateTime(2020),
                                currentDate: DateTime.now(),
                                lastDate: DateTime(2050),
                                firstDate: DateTime(2015),
                              );
                            },
                            child: Container(
                                height: 50,
                                width: _size.width * .4,
                                margin: EdgeInsets.fromLTRB(20, 20, 20, 10),
                                padding: EdgeInsets.only(
                                    bottom: 10, right: 10, left: 10),
                                decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.white, width: 2),
                                  borderRadius: BorderRadius.circular(10),
                                  shape: BoxShape.rectangle,
                                ),
                                child: TextField()),
                          ),
                          Positioned(
                              left: 30,
                              top: 12,
                              child: Container(
                                padding: EdgeInsets.only(
                                    bottom: 2, left: 2, right: 2),
                                color: Colors.black,
                                child: Text(
                                  ' Employee ID',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15),
                                ),
                              )),
                        ],
                      ),
                      Stack(
                        children: <Widget>[
                          Container(
                              height: 50,
                              margin: EdgeInsets.fromLTRB(20, 20, 20, 10),
                              padding: EdgeInsets.only(
                                  bottom: 10, right: 10, left: 10),
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.white, width: 2),
                                borderRadius: BorderRadius.circular(10),
                                shape: BoxShape.rectangle,
                              ),
                              child: TextField()),
                          Positioned(
                              left: 30,
                              top: 12,
                              child: Container(
                                padding: EdgeInsets.only(
                                    bottom: 2, left: 2, right: 2),
                                color: Colors.black,
                                child: Text(
                                  'Month',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15),
                                ),
                              )),
                        ],
                      ),
                    ],
                  ),
                  Stack(
                    children: <Widget>[
                      InkWell(
                        onTap: () {
                          showDatePicker(
                            context: context,
                            initialDate: DateTime(2020),
                            currentDate: DateTime.now(),
                            lastDate: DateTime(2050),
                            firstDate: DateTime(2015),
                          );
                        },
                        child: Container(
                          height: 50,
                          width: _size.width * .9,
                          margin: EdgeInsets.fromLTRB(20, 20, 20, 10),
                          padding:
                              EdgeInsets.only(bottom: 10, right: 10, left: 10),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 2),
                            borderRadius: BorderRadius.circular(10),
                            shape: BoxShape.rectangle,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("sdaljghoisadhgo;idsago"),
                              Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color: Colors.white,
                              )
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                          left: 30,
                          top: 12,
                          child: Container(
                            padding:
                                EdgeInsets.only(bottom: 2, left: 2, right: 2),
                            color: Colors.black,
                            child: Text(
                              ' Employee Name',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                          )),
                      // Group: Group 1786
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16.0),
                    child: Container(
                      width: _size.width * .9,
                      height: 50.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            const Color(0xFFF2503E),
                            const Color(0xFFCE3827)
                          ],
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'Search',
                          style: TextStyle(
                            fontSize: 17.0,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget itemList(
      {@required BuildContext context, @required Function function}) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Container(
        padding: const EdgeInsets.all(4),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.white),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  flex: 1,
                  child: Text(
                    "Emloyee ID",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Text(
                    "23",
                    style:
                        TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  flex: 1,
                  child: Text(
                    "Employee Name",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Text(
                    "Mohamed Ahmed",
                    style:
                        TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  flex: 1,
                  child: Text(
                    "Month",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Text(
                    "April",
                    style:
                        TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  flex: 1,
                  child: Text(
                    "Payroll",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Text(
                    "5000 SAR",
                    style:
                        TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  flex: 1,
                  child: Text(
                    "Status",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Text(
                    "Paid",
                    style:
                        TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
                  ),
                )
              ],
            ),
            Divider(
              height: 2,
              color: Colors.grey,
            ),
            InkWell(
              onTap: () {
                function();
              },
              child: Text(
                'More details',
                style: TextStyle(color: Colors.indigo, fontSize: 16),
              ),
            )
          ],
        ),
      ),
    );
  }
}
