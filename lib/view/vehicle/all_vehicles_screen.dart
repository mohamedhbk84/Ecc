import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:project/model/vehicle/vehicle_model.dart';
import 'package:project/shared/components.dart';
import 'package:project/shared/cubit/app_cubit.dart';
import 'package:project/shared/cubit/app_states.dart';
import 'package:project/view/vehicle/vehicle_details.dart';
import 'package:sizer/sizer.dart';
import '../../constants.dart';
import 'add_new_vehicle.dart';

class AllVehiclesScreen extends StatelessWidget {
  const AllVehiclesScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "Vehicles",
      ),
      body: BlocConsumer<AppCubit, AppStates>(
        listener: (context, state) {},
        bloc: AppCubit.get(context)..getAllVehicles(),
        builder: (context, state) {
          AllVehicleModel vehicle = AppCubit.get(context).allVehicles;
          return vehicle != null
              ? SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 20, horizontal: 30),
                        child: defaultButton(
                            text: "Add New Vehicle",
                            onPressed: () {
                              navigateTo(context, CreateNewVehicles());
                            },
                            color: kPrimaryColor),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          defaultContainer(Color(0xffF1FBF5), Color(0xff039712),
                              "Working", 10),
                          defaultContainer(Color(0xffFBE9CC), Color(0xffFCC163),
                              "Maintainance", 20),
                          defaultContainer(Color(0xffFCECE4), Color(0xffCE3827),
                              "Accident", 30),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            defaultText(
                                text:
                                    "Vehicle List (${vehicle.vehicles.length})",
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                            Image.asset(
                              "assets/images/Icon metro-sort-desc.png",
                              width: 5.w,
                            ),
                          ],
                        ),
                      ),
                      ListView.separated(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) =>
                              vehicleDetails(vehicle.vehicles[index], context),
                          separatorBuilder: (context, index) => SizedBox(
                                height: 2.h,
                              ),
                          itemCount: vehicle.vehicles.length),
                    ],
                  ),
                )
              : Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}

Widget vehicleDetails(
  Vehicle model,
  context,
) =>
    Container(
      color: Colors.white,
      child: Column(
        children: [
          Stack(
            alignment: Alignment.topRight,
            children: [
              Image.network(
                "${baseUrl + model.carPhoto}",
                height: 20.h,
                width: double.infinity,
              ),
              Container(
                margin: const EdgeInsets.all(15),
                width: 25.w,
                height: 5.h,
                decoration: BoxDecoration(
                    color: kRedColor, borderRadius: BorderRadius.circular(10)),
                child: Center(
                    child: defaultText(text: model.status, fontSize: 15)),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                    PopupMenuButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      itemBuilder: (context) {
                        return [
                          PopupMenuItem(
                            value: 'edit',
                            child: Text('Edit'),

                          ),
                          PopupMenuItem(
                            value: 'delete',
                            child: InkWell(
                                onTap: () {
                                  AppCubit.get(context).deleteVehicle(model.id);
                                },
                                child: Text('Delete')),

                          )
                        ];
                      },
                      onSelected: (String value) {
                        print('You Click on po up menu item $value');
                      },
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    children: [
                      Text(
                        "Issued To :",
                        style: TextStyle(
                            color: kTitleColor,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 16.w,
                      ),
                      Text(
                        model.user.name,
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
                      "Assigned Location :",
                      style: TextStyle(
                          color: kTitleColor,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 18.w,
                    ),
                    Text(
                      model.locations.first.location,
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
                        "Insurance date end :",
                        style: TextStyle(
                            color: kTitleColor,
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Text(
                        DateFormat("yyyy-MM-dd")
                            .format(model.insuranceDateStart),
                        style: TextStyle(
                            color: kGreyColor,
                            fontSize: 15,
                            fontWeight: FontWeight.normal),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 1,
                  color: Colors.grey,
                ),
                TextButton(
                    onPressed: () {
                      navigateTo(
                          context,
                          VehicleDetails(
                            vehicleModel: model,
                          ));
                    },
                    child: Text(
                      "More details",
                      style: TextStyle(color: kGreyColor, fontSize: 17),
                    ))
              ],
            ),
          ),
        ],
      ),
    );

Widget defaultContainer(
        Color color, Color borderColor, String text, int number) =>
    Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: color,
        border: Border.all(color: borderColor),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          defaultText(
              text: "$number",
              color: Color(0xff707070),
              fontWeight: FontWeight.bold),
          defaultText(
            text: text,
            color: Color(0xff707070),
          )
        ],
      ),
    );
