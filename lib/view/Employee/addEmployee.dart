import 'package:flutter/material.dart';
import 'package:project/shared/ComponentButton.dart';

import '../../constants.dart';

class AddEmployee extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          title: "ُEmployee",
          search: true,
        ),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
              child: defaultButton(
                width: double.infinity,
                text: "Add New Employee",
                background: kPrimaryColor,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(6),
              child: Row(
                children: [
                  Text(
                    "Employee",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 6,
                  ),
                  Text(
                    "List (20)",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) => listEmployee(),
                  separatorBuilder: (context, index) => Container(
                        height: 6.0,
                        color: Colors.grey[300],
                      ),
                  itemCount: 10),
            )
          ],
        ),
      ),
    );
  }

  Widget listEmployee() => Container(
        height: 90,
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(4),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: kPrimaryColor),
                        child: Center(
                          child: Text(
                            "30",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 65,
                    width: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image(
                      image: NetworkImage(
                          "https://static.remove.bg/remove-bg-web/8be32deab801c5299982a503e82b025fee233bd0/assets/start-0e837dcc57769db2306d8d659f53555feb500b3c5d456879b9c843d1872e7baa.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Column(
                    children: [],
                  )
                ],
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 4,
                ),
                Text(
                  "Mohamed AHmed",
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 3,
                ),
                Text(
                  "technical",
                  style: TextStyle(),
                ),
                SizedBox(
                  height: 3,
                ),
                Text(
                  "Regularly",
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
              ],
            ),
            Spacer(),

            PopupMenuButton(
              itemBuilder: (context) {
                return [
                  PopupMenuItem(
                      value: 'edit',
                      child: Row(
                        children: [
                          Icon(
                            Icons.edit_rounded,
                            size: 18,
                          ),
                          SizedBox(
                            width: 6,
                          ),
                          Text('Edit'),
                        ],
                      )),
                  PopupMenuItem(
                    value: 'delete',
                    child: Row(
                      children: [
                        Icon(
                          Icons.delete,
                          size: 18,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text('Delete'),
                      ],
                    ),
                  )
                ];
              },
              onSelected: (String value) {
                print('You Click on po up menu item $value');
              },
            )
            //   ],
            // )
          ],
        ),
      );
}
