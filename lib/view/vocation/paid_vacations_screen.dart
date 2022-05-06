import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:project/model/vacation/paid_vacation_model.dart';
import 'package:project/shared/components.dart';
import 'package:project/shared/cubit/app_cubit.dart';
import 'package:project/shared/cubit/app_states.dart';
import 'package:sizer/sizer.dart';
import '../../constants.dart';
import 'create_vacation_screen.dart';

class PaidVocationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      bloc: AppCubit.get(context)..getPaidVacation(),
      builder: (context, state) {
        final paidVacation = AppCubit.get(context).paidVacationModel;
        return paidVacation != null
            ? SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 10),
                      child: defaultButton(
                          text: "Create Vacation",
                          onPressed: () {
                            navigateTo(context, CreateVacationScreen());
                          },
                          color: kPrimaryColor),
                    ),
                    ListView.separated(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) =>
                            buildVacationCard(paidVacation.vacations[index]),
                        separatorBuilder: (context, index) => SizedBox(
                              height: 2.h,
                            ),
                        itemCount: paidVacation.vacations.length)
                  ],
                ),
              )
            : Center(
                child: CircularProgressIndicator(),
              );
      },
    );
  }
}

Widget buildVacationCard(Vacation model) => Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(left: 20, bottom: 10),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: 8.w,
                  height: 4.h,
                  decoration: BoxDecoration(
                      color: kPrimaryColor,
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: Text(
                      model.id.toString(),
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  model.name,
                  style: TextStyle(
                      color: kRedColor,
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Container(
                  width: 20.w,
                  color: kGreenColor,
                  child: Center(
                    child: Text(
                      model.type,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                children: [
                  Text(
                    "Start Date",
                    style: TextStyle(
                        color: kTitleColor,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 16.w,
                  ),
                  Text(
                    DateFormat("yyyy-MM-dd").format(model.startDate),
                    style: TextStyle(
                        color: kGreyColor,
                        fontSize: 17,
                        fontWeight: FontWeight.normal),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Text(
                  "End Date",
                  style: TextStyle(
                      color: kTitleColor,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 18.w,
                ),
                Text(
                  DateFormat("yyyy-MM-dd").format(model.endDate),
                  style: TextStyle(
                      color: kGreyColor,
                      fontSize: 17,
                      fontWeight: FontWeight.normal),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                children: [
                  Text(
                    "Assigned To",
                    style: TextStyle(
                        color: kTitleColor,
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Text(
                    model.employee.name,
                    style: TextStyle(
                        color: kGreyColor,
                        fontSize: 15,
                        fontWeight: FontWeight.normal),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Text(
                  "Submitted By",
                  style: TextStyle(
                      color: kTitleColor,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 10.w,
                ),
                Text(
                  model.submituser.name,
                  style: TextStyle(
                      color: kGreyColor,
                      fontSize: 15,
                      fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ],
        ),
      ),
    );
