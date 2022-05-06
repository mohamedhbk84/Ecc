import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/constants.dart';
import 'package:project/model/all_projects_model.dart';
import 'package:project/shared/components.dart';
import 'package:project/shared/cubit/app_cubit.dart';
import 'package:project/shared/cubit/app_states.dart';

class AddNewTaskScreen extends StatelessWidget {
  final TextEditingController taskName = TextEditingController();
  final TextEditingController assignedEmployees = TextEditingController();
  final TextEditingController startDate = TextEditingController();
  final TextEditingController endDate = TextEditingController();
  final TextEditingController description = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (BuildContext context) => AppCubit(),
        child: BlocConsumer<AppCubit, AppStates>(
            listener: (context, state) {},
            builder: (context, state) {
              return SafeArea(
                child: Scaffold(
                  appBar: CustomAppBar(title: " Add New Task", search: false),
                  body: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        children: [
                          customTextField(
                            controller: taskName,
                            label: "Task Name",
                            hintText: "Task Name",
                            keyboardType: TextInputType.text,
                          ),
                          customTextField(
                            controller: assignedEmployees,
                            label: "Assigned Employees(multiple)",
                            hintText: "Assigned Employees",
                            keyboardType: TextInputType.text,
                          ),
                          customTextField(
                            controller: startDate,
                            label: "Start Date",
                            hintText: "Start Date",
                            keyboardType: TextInputType.datetime,
                          ),
                          customTextField(
                            controller: endDate,
                            label: "End Date",
                            hintText: "End Date",
                            keyboardType: TextInputType.datetime,
                          ),
                          customTextField(
                              controller: description,
                              label: "Description",
                              hintText: "Description",
                              keyboardType: TextInputType.text,
                              maxLines: 5),
                          SizedBox(
                            height: 3.0,
                          ),
                          defaultButton(
                              text: "Create New Task",
                              onPressed: () {
                                AppCubit.get(context).createNewTask(
                                    name: taskName.text,
                                    users: assignedEmployees.text,
                                    startDate: startDate.text,
                                    endDate: endDate.text,
                                    description: description.text);
                              },
                              color: kPrimaryColor)
                        ],
                      ),
                    ),
                  ),
                ),
              );
            }));
  }
}
