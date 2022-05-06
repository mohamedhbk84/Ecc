import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:project/model/vehicle/all_maintenance-model.dart';
import 'package:project/model/vehicle/vehicle_model.dart';
import 'package:project/shared/components.dart';
import 'package:project/shared/cubit/app_cubit.dart';
import 'package:project/shared/cubit/app_states.dart';
import 'package:sizer/sizer.dart';
import '../../constants.dart';
import 'create_record.dart';

class MaintenanceScreen extends StatelessWidget {
  Vehicle model;
  MaintenanceScreen({Key key, this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
        listener: (context, state) {},
        bloc: AppCubit.get(context)..getAllMaintenance(model.id, model.userId),
        builder: (context, state) {
          AllMaintenanceModel model = AppCubit.get(context).maintenanceModel;
          return model != null
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 30),
                      child: defaultButton(
                          text: "Add New Record",
                          onPressed: () {
                            navigateTo(
                                context,
                                CreateRecord(
                                  model: this.model,
                                ));
                          },
                          color: kPrimaryColor),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "This Car Has ${model.maintainces.length} Maintenance Records",
                            style: TextStyle(color: kPrimaryColor),
                          ),
                          TextButton(
                              onPressed: () {},
                              child: Text(
                                "Select Date Range",
                                style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    color: Colors.red),
                              )),
                        ],
                      ),
                    ),
                    Expanded(
                      child: ListView.separated(
                          itemBuilder: (context, index) =>
                              buildMaintainanceRecord(model.maintainces[index]),
                          separatorBuilder: (context, index) => SizedBox(
                                height: 2.h,
                              ),
                          itemCount: model.maintainces.length),
                    )
                  ],
                )
              : Center(
                  child: CircularProgressIndicator(),
                );
        });
  }
}

Widget buildMaintainanceRecord(Maintaince model) => Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              DateFormat.yMMMd().format(model.date),
              style: TextStyle(color: kGreyColor),
            ),
            SizedBox(
              height: 1.h,
            ),
            Text(
              model.user.name,
              style: TextStyle(color: kPrimaryColor),
            ),
            SizedBox(
              height: 1.h,
            ),
            Text(
              model.decription,
              style: TextStyle(color: kPrimaryColor),
            ),
          ],
        ),
      ),
    );
