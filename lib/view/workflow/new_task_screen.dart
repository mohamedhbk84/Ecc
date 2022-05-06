import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:project/constants.dart';
import 'package:project/model/all_projects_model.dart';
import 'package:project/shared/components.dart';
import 'package:project/shared/cubit/app_cubit.dart';
import 'package:project/shared/cubit/app_states.dart';
import 'package:sizer/sizer.dart';

class NewTaskScreen extends StatelessWidget {
  final Project model;
  NewTaskScreen({Key key, this.model}) : super(key: key);
  final TextEditingController taskName = TextEditingController();
  final TextEditingController assignedEmployees = TextEditingController();
  final TextEditingController startDate = TextEditingController();
  final TextEditingController endDate = TextEditingController();
  final TextEditingController description = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: CustomAppBar(title: "New Task", search: false),
      body: BlocConsumer<AppCubit, AppStates>(
        listener: (context, state) {
          if (state is CreateNewTaskSuccessState)
            showToast(text: "Tasks Added Successfully");
        },
        builder: (context, state) => SingleChildScrollView(
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
                    suffixFunction: () {
                      showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(2000),
                              lastDate: DateTime(2050))
                          .then((value) {
                        startDate.text = DateFormat("yyyy-MM-dd").format(value);
                      });
                    },
                    suffix: Icons.calendar_today),
                customTextField(
                    controller: endDate,
                    label: "End Date",
                    hintText: "End Date",
                    keyboardType: TextInputType.datetime,
                    suffixFunction: () {
                      showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(2000),
                              lastDate: DateTime(2050))
                          .then((value) {
                        endDate.text = DateFormat("yyyy-MM-dd").format(value);
                      });
                    },
                    suffix: Icons.calendar_today),
                customTextField(
                    controller: description,
                    label: "Description",
                    hintText: "Description",
                    keyboardType: TextInputType.text,
                    maxLines: 5),
                SizedBox(
                  height: 3.h,
                ),
                defaultButton(
                    text: "Create New Task",
                    onPressed: () {
                      AppCubit.get(context).createNewTask(
                          name: taskName.text,
                          users: assignedEmployees.text,
                          ProjectId: model.id,
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
    ));
  }
}
