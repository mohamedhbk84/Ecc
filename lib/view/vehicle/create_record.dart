import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:project/constants.dart';
import 'package:project/model/vehicle/vehicle_model.dart';
import 'package:project/shared/components.dart';
import 'package:project/shared/cubit/app_cubit.dart';
import 'package:project/shared/cubit/app_states.dart';
import 'package:sizer/sizer.dart';

import 'maintainance_screen.dart';

class CreateRecord extends StatelessWidget {
  Vehicle model;
  CreateRecord({Key key, this.model}) : super(key: key);
  final date = TextEditingController();
  final description = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "Maintenance",
        search: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: BlocConsumer<AppCubit, AppStates>(
          listener: (context, state) {
            if (state is AddMaintenanceSuccessState) {
              state.model.status
                  ? showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            content: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Image.asset("assets/images/checked (-1.png"),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Vehicles Added Successfully",
                                  style: TextStyle(color: Colors.black),
                                ),
                                TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text(
                                    "Back",
                                    style: TextStyle(color: kRedColor),
                                  ),
                                ),
                              ],
                            ),
                          ))
                  : showToast(text: state.model.msg);
              ;
            }
          },
          builder: (context, state) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Create Maintenance Record",
                  style: TextStyle(
                      color: kPrimaryColor,
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 2.h,
                ),
                customTextField(
                    controller: date,
                    label: "Date",
                    suffix: Icons.calendar_today,
                    keyboardType: TextInputType.datetime,
                    suffixFunction: () {
                      showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(2000),
                              lastDate: DateTime(2050))
                          .then((value) {
                        date.text = DateFormat("yyyy-MM-dd").format(value);
                      });
                    },
                    hintText: "Select Date"),
                customTextField(
                    controller: description,
                    label: "Description",
                    keyboardType: TextInputType.text,
                    hintText: "Add Description"),
                Spacer(),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                  child: defaultButton(
                      text: "Save Record",
                      onPressed: () {
                        AppCubit.get(context).addMaintenance(
                            description: description.text,
                            vehicleId: model.id,
                            userId: model.userId,
                            date: date.text);
                      },
                      color: kPrimaryColor),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
