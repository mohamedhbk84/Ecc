import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:project/model/vehicle/vehicle_model.dart';
import 'package:project/shared/components.dart';
import 'package:project/view/project/project_tabbarview/details_tab.dart';
import 'package:sizer/sizer.dart';
import '../../constants.dart';

class Details extends StatelessWidget {
  final Vehicle vehicle;
  Details(this.vehicle);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsetsDirectional.only(top: 20),
        child: Container(
          decoration: const BoxDecoration(
              color: kSecondaryColor,
              borderRadius: BorderRadiusDirectional.only(
                  topStart: Radius.circular(15), topEnd: Radius.circular(15))),
          child: Column(
            children: [
              Container(
                height: 25.h,
                width: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage("${baseUrl + vehicle.carPhoto}"))),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    buildRowForDetails("Vehicle Number", vehicle.id.toString()),
                    buildRowForDetails("Vehicle Name", vehicle.name),
                    buildRowForDetails("Vehicle Model", vehicle.model),
                    buildRowForDetails("Vehicle Status", vehicle.status),
                    buildRowForDetails(
                        "Kilometers", vehicle.kilometer.toString()),
                    buildRowForDetails("Insurance Date Start",
                        DateFormat.yMMMd().format(vehicle.insuranceDateStart)),
                    buildRowForDetails(
                        "License Number", vehicle.licenseNumber.toString()),
                    buildRowForDetails("License Date End",
                        DateFormat.yMMMd().format(vehicle.licenseDateEnd)),
                    buildRowForDetails("Examination Date",
                        DateFormat.yMMMd().format(vehicle.examinationDate)),
                    buildRowForDetails("Issued To", vehicle.user.name),
                    buildRowForDetails(
                        "Assigned Location", vehicle.locations.first.location),
                    SizedBox(
                      height: 1.5.h,
                    ),
                    const Text(
                      "Notes",
                      style: TextStyle(
                          fontWeight: FontWeight.normal, color: kTitleColor),
                    ),
                    SizedBox(
                      height: 1.5.h,
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Text(
                        vehicle.notes,
                        style: TextStyle(
                            fontWeight: FontWeight.normal, color: kGreyColor),
                      ),
                    ),
                    const Text(
                      "Documentation",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: kRedColor),
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Insurance Photo",
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              color: kTitleColor),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Row(
                            children: [
                              Image.asset(
                                "assets/images/Icon feather-eye.png",
                                height: 2.h,
                              ),
                              SizedBox(
                                width: 1.w,
                              ),
                              const Text(
                                "view",
                                style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    fontWeight: FontWeight.bold,
                                    color: kRedColor),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Licence Photo",
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              color: kTitleColor),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Row(
                            children: [
                              Image.asset(
                                "assets/images/Icon feather-eye.png",
                                height: 2.h,
                              ),
                              SizedBox(
                                width: 1.w,
                              ),
                              const Text(
                                "view",
                                style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    fontWeight: FontWeight.bold,
                                    color: kRedColor),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Upload Driver License",
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              color: kTitleColor),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Row(
                            children: [
                              Image.asset(
                                "assets/images/Icon feather-eye.png",
                                height: 2.h,
                              ),
                              SizedBox(
                                width: 1.w,
                              ),
                              Text(
                                "view",
                                style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    fontWeight: FontWeight.bold,
                                    color: kRedColor),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 4.h,
                    ),
                    Row(
                      children: [
                        Container(
                            height: 8.2.h,
                            width: 17.w,
                            decoration: BoxDecoration(
                                color: kRedColor,
                                borderRadius: BorderRadius.circular(10)),
                            child: Center(
                                child: Image.asset(
                              "assets/images/Icon feather-printer.png",
                              fit: BoxFit.cover,
                              width: 10.w,
                            ))),
                        SizedBox(
                          width: 3.w,
                        ),
                        Expanded(
                          child: defaultButton(
                              text: "Export",
                              onPressed: () {},
                              color: kPrimaryColor),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5.h,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
