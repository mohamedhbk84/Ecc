import 'package:flutter/material.dart';
import 'package:project/shared/ComponentButton.dart';

class SalaryScreen extends StatelessWidget {
  final TextEditingController taskName = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(15),
          child: Container(
            color: Colors.white,
            child: newTaskField(
              controller: taskName,
              label: "Select Month",
              hintText: "Select Month",
              keyboardType: TextInputType.text,
              icon: Icon(Icons.date_range),
            ),
          ),
        ),
        Expanded(
          child: ListView.separated(
            separatorBuilder: (context, index) => SizedBox(
              height: 8,
            ),
            itemBuilder: (context, index) => listView(context),
            itemCount: 4,
          ),
        )
      ],
    );
  }

  Widget line({context, String name, String branch}) => Padding(
        padding: EdgeInsets.only(top: 8, left: 10),
        child: Row(
          children: [
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    branch,
                    style: TextStyle(
                        color: Colors.brown.shade200,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
  Widget text() => Text(
        "  - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - ",
        style: TextStyle(color: Colors.grey),
      );

  Widget lineCash({context, String name, String branch, Color textColor}) =>
      Padding(
        padding: EdgeInsets.only(top: 8, left: 10),
        child: Row(
          children: [
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    branch,
                    style: TextStyle(
                        color: textColor,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
  Widget listView(context) => Container(
        height: 200,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(20)),
        child: Column(
          children: [
            line(context: context, name: "Employee Id", branch: "23"),
            line(
                context: context,
                name: "Employee Name",
                branch: "Mohamed Ahmed"),
            line(context: context, name: "Month", branch: "April 2021"),
            line(context: context, name: "Salary", branch: "5000 SAR"),
            lineCash(
                context: context,
                name: "Status",
                branch: "Paid",
                textColor: Colors.green),
            SizedBox(
              height: 5,
            ),
            text(),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "More Details",
                    style: TextStyle(fontSize: 16),
                  )
                ],
              ),
            )
          ],
        ),
      );
}
