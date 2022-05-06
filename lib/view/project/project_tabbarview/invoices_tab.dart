import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:project/shared/components.dart';
import 'package:sizer/sizer.dart';

import '../../../constants.dart';

class InvoicesScreen extends StatelessWidget {
  InvoicesScreen({Key key}) : super(key: key);
  final TextEditingController valueController = TextEditingController();
  final TextEditingController expectedDateController = TextEditingController();
  final TextEditingController detailsController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
          child: defaultButton(
              text: "Add Invoice",
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return Container(
                      width: double.infinity,
                      child: Dialog(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        insetPadding: EdgeInsets.symmetric(horizontal: 10),
                        backgroundColor: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 40),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "Create New Invoice",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17),
                              ),
                              SizedBox(
                                height: 2.h,
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Expanded(
                                    child: customTextField(
                                        controller: valueController,
                                        keyboardType: TextInputType.number,
                                        label: "Value",
                                        hintText: "Add Value"),
                                  ),
                                  SizedBox(
                                    width: 1.w,
                                  ),
                                  Expanded(
                                    child: customTextField(
                                        controller: expectedDateController,
                                        keyboardType: TextInputType.datetime,
                                        label: "Expected Date",
                                        hintText: "Invoice Date"),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 2.h,
                              ),
                              customTextField(
                                  controller: detailsController,
                                  keyboardType: TextInputType.text,
                                  label: "Details",
                                  hintText: "Invoive Details"),
                              SizedBox(
                                height: 2.h,
                              ),
                              defaultButton(
                                  text: "Add Invoice", onPressed: () {})
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                );
              },
              color: kPrimaryColor),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              defaultText(
                text: "Invoice List (3)",
                color: Colors.black,
              ),
              Image.asset(
                "assets/images/Icon metro-sort-desc.png",
                width: 5.w,
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView.separated(
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) => buildInvoiceCard(),
              separatorBuilder: (context, index) => SizedBox(
                    height: 2.h,
                  ),
              itemCount: 3),
        )
      ],
    );
  }
}

Widget buildInvoiceCard() => Container(
      padding: const EdgeInsets.all(10),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Invoice - 1",
            style: TextStyle(
                color: kRedColor, fontWeight: FontWeight.bold, fontSize: 17),
          ),
          SizedBox(
            height: 1.h,
          ),
          Row(
            children: [
              const Text(
                "Value",
                style: TextStyle(
                    color: kTitleColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 13),
              ),
              SizedBox(
                width: 10.h,
              ),
              const Text(
                "25%",
                style: TextStyle(
                    color: kTitleColor,
                    fontWeight: FontWeight.normal,
                    fontSize: 13),
              ),
            ],
          ),
          SizedBox(
            height: 1.h,
          ),
          Row(
            children: [
              const Text(
                "Notes",
                style: TextStyle(
                    color: kTitleColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 13),
              ),
              SizedBox(
                width: 20.w,
              ),
              const Text(
                "25%",
                style: TextStyle(
                    color: kTitleColor,
                    fontWeight: FontWeight.normal,
                    fontSize: 13),
              ),
            ],
          ),
          SizedBox(
            height: 1.h,
          ),
          Row(
            children: [
              const Text(
                "Expected Date",
                style: TextStyle(
                    color: kTitleColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 13),
              ),
              SizedBox(
                width: 5.w,
              ),
              const Text(
                "15-1-2021",
                style: TextStyle(
                    color: kTitleColor,
                    fontWeight: FontWeight.normal,
                    fontSize: 13),
              ),
            ],
          ),
          SizedBox(
            height: 1.h,
          ),
          Row(
            children: [
              const Text(
                "Status",
                style: TextStyle(
                    color: kTitleColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 13),
              ),
              SizedBox(
                width: 18.w,
              ),
              const Text(
                "unpaid",
                style: TextStyle(
                    color: kTitleColor,
                    fontWeight: FontWeight.normal,
                    fontSize: 13),
              ),
              const Spacer(),
              const Text(
                "Paid",
                style: TextStyle(
                    decoration: TextDecoration.underline,
                    color: kGreenColor,
                    fontWeight: FontWeight.normal,
                    fontSize: 13),
              ),
            ],
          ),
        ],
      ),
    );
