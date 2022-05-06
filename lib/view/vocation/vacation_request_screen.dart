import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:project/constants.dart';
import 'package:project/model/vacation/all_vacation_model.dart';
import 'package:project/shared/components.dart';
import 'package:project/shared/cubit/app_cubit.dart';
import 'package:project/shared/cubit/app_states.dart';
import 'package:sizer/sizer.dart';

import 'create_vacation_screen.dart';

class VocationRequestScreen extends StatelessWidget {
  const VocationRequestScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            child: defaultButton(
                text: "Create Vacation",
                onPressed: () {
                  navigateTo(context, CreateVacationScreen());
                },
                color: kPrimaryColor),
          ),
          BlocConsumer<AppCubit, AppStates>(
              listener: (context, state) {},
              bloc: AppCubit.get(context)..getAllVacations(),
              builder: (context, state) {
                final model = AppCubit.get(context).vacationModel;
                return model != null
                    ? ListView.separated(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) =>
                            buildVacationRequestCard(
                                model.vacations[index], context),
                        separatorBuilder: (context, index) => SizedBox(
                              height: 2.h,
                            ),
                        itemCount: model.vacations.length)
                    : Center(
                        child: CircularProgressIndicator(),
                      );
              })
        ],
      ),
    );
  }
}

Widget buildVacationRequestCard(Vacation model, context) => Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(left: 20),
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
                    width: 5.w,
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
                  width: 7.w,
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
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                children: [
                  Text(
                    "Reason",
                    style: TextStyle(
                        color: kTitleColor,
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 8.w,
                  ),
                  Text(
                    model.reason,
                    style: TextStyle(
                        color: kGreyColor,
                        fontSize: 15,
                        fontWeight: FontWeight.normal),
                  ),
                ],
              ),
            ),
            if (model.status != 1)
              SizedBox(
                height: 10,
              ),
            Row(
              children: [
                Text(
                  "Status",
                  style: TextStyle(
                      color: kTitleColor,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 12.w,
                ),
                Text(
                  model.status == 2
                      ? "Approved"
                      : model.status == 1
                          ? "Pending"
                          : "Rejected",
                  style: TextStyle(
                      color: kGreyColor,
                      fontSize: 17,
                      fontWeight: FontWeight.normal),
                ),
                Spacer(),
                if (model.status == 1)
                  Row(
                    children: [
                      TextButton(
                        onPressed: () {
                          AppCubit.get(context)
                              .acceptVacation(model.userId, model.id);
                        },
                        child: Text(
                          "Accept",
                          style: TextStyle(
                              fontSize: 12,
                              decoration: TextDecoration.underline,
                              color: kGreenColor),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          AppCubit.get(context)
                              .cancelVacation(model.userId, model.id);
                        },
                        child: Text(
                          "Reject",
                          style: TextStyle(
                              fontSize: 12,
                              decoration: TextDecoration.underline,
                              color: kRedColor),
                        ),
                      ),
                    ],
                  )
              ],
            ),
          ],
        ),
      ),
    );
