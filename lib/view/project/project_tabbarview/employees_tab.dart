import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project/constants.dart';
import 'package:project/model/all_projects_model.dart';
import 'package:project/shared/components.dart';
import 'package:sizer/sizer.dart';

class EmployeesScreen extends StatelessWidget {
  final Project model;
  const EmployeesScreen({Key key, this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              defaultText(
                text: "Employees List (${model.employees.length})",
                color: Colors.black,
              ),
              Image.asset(
                "assets/images/Icon metro-sort-desc.png",
                width: 6.w,
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView.separated(
              itemBuilder: (context, index) =>
                  employeeCard(model.employees[index]),
              separatorBuilder: (context, index) => SizedBox(
                    height: 2.h,
                  ),
              itemCount: model.employees.length),
        )
      ],
    );
  }
}

Widget employeeCard(Employee model) => Container(
      padding: const EdgeInsets.all(10),
      color: Colors.white,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 8.w,
            height: 4.h,
            decoration: BoxDecoration(
                color: kPrimaryColor, borderRadius: BorderRadius.circular(10)),
            child: Center(
              child: Text(
                "${model.id}",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(
            width: 1.w,
          ),
          Image.asset(
            "assets/images/Rectangle 616.png",
            width: 20.w,
          ),
          SizedBox(
            width: 3.w,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                model.name,
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: kRedColor),
              ),
              Text(
                model.type,
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.normal,
                    color: kGreyColor),
              ),
              Text(
                model.employeetype,
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.normal,
                    color: kTitleColor),
              ),
            ],
          ),
          Spacer(),
          PopupMenuButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
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
    );
