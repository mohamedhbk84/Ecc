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

class DetailsScreen extends StatelessWidget {
  final Project model;
  const DetailsScreen({this.model});

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
              Padding(
                padding: const EdgeInsets.all(12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    defaultContainer(const Color(0xffF1FBF5),
                        const Color(0xff039712), "Tasks", model.task.length),
                    defaultContainer(
                        const Color(0xffFCECE4),
                        const Color(0xffCE3827),
                        "Employees",
                        model.employees.length),
                    defaultContainer(
                        const Color(0xffFBE9CC),
                        const Color(0xffFCC163),
                        "Vehicles",
                        model.vehicles.length),
                  ],
                ),
              ),
              Stack(
                alignment: AlignmentDirectional.topEnd,
                children: [
                  Container(
                    height: 25.h,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: NetworkImage(baseUrl + model.photo),
                    )),
                    width: double.infinity,
                  ),
                  Container(
                    margin: const EdgeInsets.all(15),
                    width: 25.w,
                    height: 5.h,
                    decoration: BoxDecoration(
                        color: kRedColor,
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                        child: defaultText(text: model.type, fontSize: 15)),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    buildRowForDetails("Project Name", model.name),
                    buildRowForDetails("Project Value", model.value),
                    buildRowForDetails(
                        "Invoice Number", model.invoicesNo.toString()),
                    buildRowForDetails("Project Type", model.type),
                    buildRowForDetails("Start Date",
                        DateFormat("yyyy-MM-dd").format(model.endDate)),
                    buildRowForDetails("End Date",
                        DateFormat("yyyy-MM-dd").format(model.endDate)),
                    buildRowForDetails("Location", model.location.location),
                    buildRowForDetails(
                        "Task Creator", model.taskCreator.first.name),
                    SizedBox(
                      height: 1.5.h,
                    ),
                    Text(
                      "notes",
                      style: TextStyle(
                          fontWeight: FontWeight.normal, color: kTitleColor),
                    ),
                    SizedBox(
                      height: 1.5.h,
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 20, bottom: 10),
                      child: Text(
                        model.notes,
                        style: TextStyle(
                            fontWeight: FontWeight.normal, color: kGreyColor),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "view On Map",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: kRedColor),
                      ),
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                  ],
                ),
              ),
              Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset(
                    "assets/images/map.png",
                    width: double.infinity,
                    height: 20.h,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    right: 50,
                    child: Image.asset(
                      "assets/images/ic_current.png",
                      width: 30.w,
                      height: 10.h,
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Project Schedule",
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              color: kTitleColor),
                        ),
                        Row(
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
                          "Project Contract",
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              color: kTitleColor),
                        ),
                        Row(
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
                          "Other Files",
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              color: kTitleColor),
                        ),
                        Row(
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
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 1.h,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
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
              ),
              SizedBox(
                height: 5.h,
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget buildRowForDetails(String title, String text) => Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          Text(
            title,
            style: const TextStyle(
                fontWeight: FontWeight.normal, color: kTitleColor),
          ),
          SizedBox(
            width: 10.w,
          ),
          Text(
            text,
            style:
                const TextStyle(color: kGreyColor, fontWeight: FontWeight.bold),
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
