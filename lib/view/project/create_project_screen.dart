import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/constants.dart';
import 'package:project/model/all_employees.dart';
import 'package:project/shared/components.dart';
import 'package:project/shared/cubit/app_cubit.dart';
import 'package:project/shared/cubit/app_states.dart';
import 'package:sizer/sizer.dart';

class CreateProjectScreen extends StatelessWidget {
  final projectName = TextEditingController();
  final projectType = TextEditingController();
  final value = TextEditingController();
  final invoiceNo = TextEditingController();
  final invoiceValue = TextEditingController();
  final expectedDate = TextEditingController();
  final startDate = TextEditingController();
  final endDate = TextEditingController();
  final deadline = TextEditingController();
  final scheduleLink = TextEditingController();
  final contractLink = TextEditingController();
  final notes = TextEditingController();
  String location;
  List<String> employees;
  List<String> vehicles;
  List<String> taskCreator;
  File image;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
        listener: (context, state) {},
        builder: (context, state) {
          List<Users> users = AppCubit.get(context).allEmployees.users;
          return Scaffold(
            backgroundColor: Colors.white,
            appBar: CustomAppBar(
              title: "Create Project",
              search: false,
            ),
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Create New Project",
                      style: TextStyle(
                          color: kPrimaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 17),
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    customTextField(
                        hintText: "Project Name",
                        label: "Project Name",
                        controller: projectName,
                        keyboardType: TextInputType.name),
                    customTextField(
                        hintText: "Project Type",
                        label: "Design",
                        controller: projectType,
                        keyboardType: TextInputType.text),
                    Row(
                      children: [
                        Expanded(
                          child: customTextField(
                              hintText: "Enter value",
                              label: "Value",
                              controller: value,
                              keyboardType: TextInputType.number),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: customTextField(
                              hintText: "2",
                              label: "Invoice No.",
                              controller: invoiceNo,
                              keyboardType: TextInputType.number),
                        ),
                      ],
                    ),
                    Text(
                      "Invoice -1",
                      style: TextStyle(
                          color: kRedColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 17),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: customTextField(
                              hintText: "Invoice value",
                              label: "Value",
                              controller: invoiceValue,
                              keyboardType: TextInputType.number),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: customTextField(
                              hintText: "Selected date",
                              label: "Expected Date",
                              controller: expectedDate,
                              keyboardType: TextInputType.datetime,
                              suffixFunction: () {
                                showDatePicker(
                                        context: context,
                                        initialDate: DateTime.now(),
                                        firstDate: DateTime(2000),
                                        lastDate: DateTime(2050))
                                    .then((value) {
                                  expectedDate.text = value.toString();
                                });
                              },
                              suffix: Icons.calendar_today),
                        ),
                      ],
                    ),
                    customTextField(
                        hintText: "Enter start date",
                        label: "Start Date",
                        controller: startDate,
                        keyboardType: TextInputType.datetime,
                        suffixFunction: () {
                          showDatePicker(
                                  context: context,
                                  initialDate: DateTime.now(),
                                  firstDate: DateTime(2000),
                                  lastDate: DateTime(2050))
                              .then((value) {
                            startDate.text = value.toString();
                          });
                        },
                        suffix: Icons.calendar_today),
                    customTextField(
                        hintText: "Enter End date",
                        label: "End Date",
                        controller: endDate,
                        keyboardType: TextInputType.datetime,
                        suffixFunction: () {
                          showDatePicker(
                                  context: context,
                                  initialDate: DateTime.now(),
                                  firstDate: DateTime(2000),
                                  lastDate: DateTime(2050))
                              .then((value) {
                            endDate.text = value.toString();
                          });
                        },
                        suffix: Icons.calendar_today),
                    customDropdownMenu(
                        onChanged: (value) {},
                        itemList: [],
                        hintText: "Choose from Locations",
                        label: "Choose Locations(single)"),
                    customDropdownMenu(
                        onChanged: (value) {},
                        itemList: List.generate(users.length, (index) {
                          return new DropdownMenuItem(
                              value: users.elementAt(index).toString(),
                              child: Text(users.elementAt(index).toString()));
                        }),
                        hintText: "Choose from employees",
                        label: "Choose Employees(multiple)"),
                    customDropdownMenu(
                        onChanged: (value) {},
                        itemList: [],
                        hintText: "Choose from vehicles",
                        label: "Choose vehicles(optional)"),
                    customTextField(
                        hintText: "Enter End date",
                        showLabel: false,
                        controller: deadline,
                        suffix: Icons.link),
                    customTextField(
                        hintText: "Attach Time Schedule link here",
                        controller: scheduleLink,
                        showLabel: false,
                        suffix: Icons.link),
                    customTextField(
                        hintText: "Attach Project Contract link here",
                        showLabel: false,
                        controller: contractLink,
                        suffix: Icons.link),
                    customDropdownMenu(
                        onChanged: (value) {},
                        itemList: [],
                        hintText: "Choose from emolyees",
                        label: "Task Creator(Multiple)"),
                    Container(
                      height: 20.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[200],
                      ),
                      child: Center(
                        child: Text("Add Photo",
                            style: TextStyle(color: Colors.grey)),
                      ),
                    ),
                    customTextField(
                      hintText: "Notes",
                      controller: notes,
                      label: "Notes",
                    ),
                    defaultButton(
                        text: "Save Project",
                        onPressed: () {
                          AppCubit.get(context).createNewProject(
                            name: projectName.text,
                            type: projectType.text,
                            startDate: startDate.text,
                            endDate: endDate.text,
                            notes: notes.text,
                            contractLink: contractLink.text,
                            deadline: deadline.text,
                            locationId: location,
                            // taskCreator: ,
                            photo: image.toString(),
                            schedualLink: scheduleLink.text,
                          );
                        },
                        color: kPrimaryColor),
                    SizedBox(
                      height: 4.h,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 90),
                      child: Text(
                        "Return To All Projects",
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: kRedColor,
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
