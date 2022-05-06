import 'package:flutter/material.dart';
import 'package:project/shared/components.dart';

class Report_Details extends StatelessWidget {
  const Report_Details({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: myCustomAppBar(
        context: context,
        title: 'Report Details',
        canPop: true,
        haveBell: true,
        haveNotf: true,
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: custom_row(title: 'Report Date', val: '1-June -2021'),
          ),
          Container(
            padding: const EdgeInsets.only(top: 8, bottom: 8),
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadiusDirectional.only(
                    topStart: Radius.circular(10),
                    topEnd: Radius.circular(10))),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  custom_row(title: 'Location', val: 'Location-1'),
                  custom_row(title: 'Target', val: 'New Target-1'),
                  custom_row(title: 'Report Approved by', val: 'Khaled Ali'),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    'Achievements',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                      'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa'),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    'Problems',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                      'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa'),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      Expanded(
                          flex: 1,
                          child: Container(
                            child: Image.asset(
                              "assets/images/download.png",
                              fit: BoxFit.fill,
                            ),
                            height: 100,
                          )),
                      SizedBox(
                        width: 8,
                      ),
                      Expanded(
                          flex: 1,
                          child: Container(
                            child: Image.asset(
                              "assets/images/download.png",
                              fit: BoxFit.fill,
                            ),
                            height: 100,
                          )),
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      Text('file.docx'),
                      Spacer(),
                      Image.asset("assets/images/Icon feather-eye.png"),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'view',
                          style: TextStyle(color: Colors.red),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    'Task Report',
                    style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  custom_row(title: 'Task Name', val: 'New Task'),
                  custom_row(title: 'Note', val: 'Task Have some issues'),
                  SizedBox(
                    height: 16,
                  ),
                  Divider(
                    height: 1,
                    color: Colors.grey,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          height: 62.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            color: const Color(0xFF039712),
                          ),
                          child: Center(
                            child: Text(
                              'Accept',
                              style: TextStyle(
                                fontSize: 17.0,
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          height: 62.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            color: const Color(0xFFAC2929),
                          ),
                          child: Center(
                            child: Text(
                              'Reject',
                              style: TextStyle(
                                fontSize: 17.0,
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          height: 62.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            color: const Color(0xFF303D31),
                          ),
                          child: Center(
                            child: Text(
                              'Note',
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
                  )
                ],
              ),
            ),
          )
        ],
      )),
    );
  }
}
