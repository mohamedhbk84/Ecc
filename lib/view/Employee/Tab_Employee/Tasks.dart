import 'package:flutter/material.dart';
import 'package:project/shared/ComponentButton.dart';
import 'package:project/view/Employee/Tab_Employee/AddNewTask.dart';

import '../../../constants.dart';

class Tasks extends StatefulWidget {
  @override
  _TasksState createState() => _TasksState();
}

class _TasksState extends State<Tasks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.grey.shade200,
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              height: 90,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10))),
              child: Center(
                child: defaultButton(
                    width: MediaQuery.of(context).size.width - 40,
                    background: kDefaultButtonColor,
                    function: () {
                      navigateTo(context, AddNewTaskScreen());
                    },
                    text: "Add New Tasks "),
              ),
            ),
            Expanded(
              child: ListView.separated(
                separatorBuilder: (context, index) => SizedBox(
                  height: 10,
                ),
                itemCount: 10,
                itemBuilder: (context, index) => buildProjectTasksCard(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildProjectTasksCard() => Stack(
        alignment: AlignmentDirectional.topStart,
        children: [
          Container(
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadiusDirectional.only(
                    topStart: Radius.circular(15),
                    topEnd: Radius.circular(15))),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 1.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          defaultText(
                              text: "6 june 2021 - - - - - 16 june 2021",
                              color: kTitleColor,
                              fontSize: 12),
                          SizedBox(
                            height: 4.0,
                          ),
                          defaultText(
                              text: "Task :     NewTask -1",
                              color: kGreyColor,
                              fontSize: 12),
                          SizedBox(
                            height: 1.0,
                          ),
                          defaultText(
                              text: "Task Admin :   Khaled Ali",
                              color: kGreyColor,
                              fontSize: 12),
                          SizedBox(
                            height: 1.0,
                          ),
                          defaultText(
                              text: "Assigned To :      Ahmed ",
                              color: kGreyColor,
                              fontSize: 12),
                          SizedBox(
                            height: 1.0,
                          ),
                        ],
                      ),
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 20.0,
                            ),
                            SizedBox(
                              height: 2.0,
                            ),
                            defaultText(
                                text: "Completed",
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                                color: kGreenColor)
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 1.0,
                      ),
                      PopupMenuButton(
                        itemBuilder: (context) {
                          return [
                            PopupMenuItem(
                              value: 'edit',
                              child: Text('Edit'),
                            ),
                            PopupMenuItem(
                              value: 'delete',
                              child: Text('Delete'),
                            )
                          ];
                        },
                        onSelected: (String value) {
                          print('You Click on po up menu item $value');
                        },
                      )
                    ],
                  ),
                  SizedBox(
                    height: 1.0,
                  ),
                  Container(
                    height: 1,
                    color: kGreyColor,
                  ),
                  SizedBox(
                    height: 1.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        defaultText(
                            text: "More detailed",
                            color: kTitleColor,
                            fontSize: 14,
                            fontWeight: FontWeight.normal),
                        const Text(
                          "Add Note",
                          style: TextStyle(
                              color: kGreenColor,
                              decoration: TextDecoration.underline),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            width: 3.0,
            height: 9.0,
            decoration: const BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadiusDirectional.only(
                    topStart: Radius.circular(20),
                    bottomEnd: Radius.circular(20))),
          ),
        ],
      );
}
