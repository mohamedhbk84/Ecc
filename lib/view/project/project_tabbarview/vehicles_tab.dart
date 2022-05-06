import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:intl/intl.dart';
import 'package:project/model/all_projects_model.dart';
import 'package:project/model/vehicle/vehicle_model.dart';
import 'package:project/shared/components.dart';
import 'package:project/view/vehicle/vehicle_details.dart';
import 'package:sizer/sizer.dart';

import '../../../constants.dart';


class VehiclesScreen extends StatelessWidget {
  final Project model;
  const VehiclesScreen({Key key, this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return model.vehicles.length > 0
        ? ListView.separated(
            itemBuilder: (context, index) =>
                buildVehiclesCard(model.vehicles[index], context),
            separatorBuilder: (context, index) => SizedBox(
                  height: 2.h,
                ),
            itemCount: model.vehicles.length)
        : Center(
            child: Text(
            "Please Add Vehicles",
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          ));
  }
}

Widget buildVehiclesCard(Vehicle model, context) => Container(
      color: Colors.white,
      child: Column(
        children: [
          Image.asset(
            "assets/images/Mask Group 2.png",
          ),
          Padding(
            padding: const EdgeInsets.all(20),
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
                      width: 1.w,
                    ),
                    Text(
                      model.name,
                      style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                          fontSize: 17),
                    )
                  ],
                ),
                SizedBox(
                  height: 1.h,
                ),
                Row(
                  children: [
                    Text(
                      "Issued to :   ",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    Text(model.user.name,
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.bold)),
                  ],
                ),
                SizedBox(
                  height: 1.h,
                ),
                Row(
                  children: [
                    Text(
                      "Assigned Location :   ",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    Text(model.locations.first.location,
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.bold)),
                  ],
                ),
                SizedBox(
                  height: 1.h,
                ),
                Row(
                  children: [
                    Text(
                      "Insurance date end :   ",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    Text(
                        DateFormat("yyyy-MM-dd").format(model.insuranceDateEnd),
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.bold)),
                  ],
                ),
                SizedBox(
                  height: 3.h,
                ),
                Container(
                  height: 1,
                  color: Colors.grey,
                ),
                SizedBox(
                  height: 2.h,
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
                    style: TextStyle(color: Color(0xff0D204C)),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
