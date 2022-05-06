import 'package:flutter/material.dart';
import 'package:project/shared/components.dart';

class Reports extends StatelessWidget {
  const Reports({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: myCustomAppBar(
          title: 'Reports',
          context: context,
          search: true,
          haveNotf: true,
          haveBell: true,
          canPop: true,
          toolbarHeight: 130),
      body: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(top: 8, bottom: 8, right: 30, left: 30),
            child: defaultButton(
                text: 'Add Report', onPressed: () {}, color: Color(0xFF293E4D)),
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
                  margin: EdgeInsets.fromLTRB(20, 20, 20, 10),
                  padding: EdgeInsets.only(bottom: 10, right: 10, left: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey, width: 2),
                    borderRadius: BorderRadius.circular(10),
                    shape: BoxShape.rectangle,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("s "),
                      Icon(
                        Icons.keyboard_arrow_down_rounded,
                        color: Colors.grey,
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                  left: 50,
                  top: 12,
                  child: Container(
                    padding: EdgeInsets.only(bottom: 2, left: 2, right: 2),
                    color: Colors.white,
                    child: Text(
                      'Select  Date Range',
                      style: TextStyle(color: Colors.black, fontSize: 15),
                    ),
                  )),
              // Group: Group 1786
            ],
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 50,
                itemBuilder: (context, pos) {
                  return item();
                }),
          )
        ],
      ),
    );
  }

  Widget item() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
      child: Container(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
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
                      "Employee Nane",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Text(
                      "Mohamed Ahmed",
                      style: TextStyle(
                          fontSize: 12, fontWeight: FontWeight.normal),
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
                      "Report Date",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Text(
                      "1-June-2021",
                      style: TextStyle(
                          fontSize: 12, fontWeight: FontWeight.normal),
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
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Text(
                      "Accepted",
                      style: TextStyle(
                          fontSize: 12, fontWeight: FontWeight.normal),
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
                      "Report Approved By",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Text(
                      "Khaled Ali",
                      style: TextStyle(
                          fontSize: 12, fontWeight: FontWeight.normal),
                    ),
                  )
                ],
              ),
              Divider(
                height: 2,
                color: Colors.grey,
              ),
              Row(
                children: [
                  InkWell(
                    onTap: () {},
                    child: Text(
                      'More details',
                      style: TextStyle(color: Colors.indigo, fontSize: 16),
                    ),
                  ),
                  Spacer(
                    flex: 3,
                  ),
                  Text(
                    "Accept",
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Colors.green),
                  ),
                  Spacer(
                    flex: 1,
                  ),
                  Text(
                    "Reject",
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Colors.red),
                  ),
                  Spacer(
                    flex: 1,
                  ),
                  Text(
                    "Note",
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Colors.grey),
                  )
                ],
              )
            ],
          )),
    );
  }
}
