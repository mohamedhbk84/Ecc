import 'package:flutter/material.dart';
import 'package:project/shared/ComponentButton.dart';

class DetailsEmployee extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            detailsImage(),
            details2(context),
            line(context: context, name: "Iqama or id", branch: "2344565"),
            line(context: context, name: "End Date", branch: "1-2-2021"),
            line(context: context, name: "Passport name", branch: "123445"),
            line(context: context, name: "End Date", branch: "1-2-2021"),
            SizedBox(
              height: 5,
            ),
            text(),
            line(context: context, name: "Joining Data", branch: "1-5-2021"),
            line(context: context, name: "Contract End", branch: "1-5-2022"),
            line(context: context, name: "Working Start Time", branch: "9 Am"),
            line(context: context, name: "Working End Time", branch: "5 Am"),
            line(
                context: context,
                name: " working day",
                branch: "sat,               Sun ,Mon ,Tun"),
            SizedBox(
              height: 5,
            ),
            text(),
            line(context: context, name: "Basic Salary", branch: "2000 SAR"),
            line(
                context: context,
                name: "Accomdition allowance",
                branch: "200 SAR"),
            line(
                context: context,
                name: "Transpaction allowance",
                branch: "200 SAR"),
            line(context: context, name: "Phone allowance", branch: "200 SAR"),
            line(context: context, name: "Phone allowance", branch: "200 SAR"),
            line(
                context: context,
                name: "Sub Employee (Multiple)",
                branch: "Mohamed ahmed , Esayed ated "),
            line(
                context: context,
                name: "Detection /Boncing",
                branch: "Mohamed ahmed , Esayed ated "),
            line(
                context: context,
                name: "Vaction Approval",
                branch: "Mohamed ahmed , Esayed ated "),
            line(
                context: context,
                name: "Report Approval",
                branch: "Mohamed ahmed , Esayed ated "),
            SizedBox(
              height: 5,
            ),
            text(),
            Padding(
              padding: EdgeInsets.all(6),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Documentions",
                    style: TextStyle(
                        color: Colors.red.shade500,
                        fontWeight: FontWeight.bold,
                        fontSize: 17),
                  ),
                ],
              ),
            ),
            bottom(text: "iqama Photo"),
            bottom(text: "Password Photo"),
            bottom(text: "Contract File"),
            bottom(text: "Other File"),
            Container(
              height: 60,
              width: MediaQuery.of(context).size.width - 40,
              decoration: BoxDecoration(
                  color: Colors.green, borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: Text(
                  "Call",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child:
                            Image(image: AssetImage("assets/images/event.png")),
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  defaultButton(
                      width: MediaQuery.of(context).size.width - 100,
                      text: "Export")
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget detailsImage() => Container(
        height: 120,
        color: Color(0xffFCECE4),
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: Container(
                height: 110,
                width: 110,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/1200px-Image_created_with_a_mobile_phone.png"),
                        fit: BoxFit.cover)),
              ),
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      "Employee No.",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      "User Name",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      "Postion",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      "Employee Type",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                SizedBox(
                  width: 8,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      "32",
                      style: TextStyle(
                          color: Colors.brown.shade200,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      "Mohamed",
                      style: TextStyle(
                          color: Colors.brown.shade200,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      "tichnical",
                      style: TextStyle(
                          color: Colors.brown.shade200,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      "Regular",
                      style: TextStyle(
                          color: Colors.brown.shade200,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      );
  Widget details2(context) => Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 10, left: 10),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      "Password",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      "Contact Phone",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      "Email",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 2 - 110,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 4,
                    ),
                    Row(
                      children: [
                        Text(
                          "000",
                          style: TextStyle(
                              color: Colors.brown.shade200,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        Text(
                          "Reset",
                          style: TextStyle(
                              color: Colors.red,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      "123445",
                      style: TextStyle(
                          color: Colors.brown.shade200,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      "ahmad@gmail.com",
                      style: TextStyle(
                          color: Colors.brown.shade200,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Text(
            "  - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - ",
            style: TextStyle(color: Colors.grey),
          ),
        ],
      );

  Widget line({context, String name, String branch}) => Padding(
        padding: EdgeInsets.only(top: 8, left: 10),
        child: Row(
          children: [
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    branch,
                    style: TextStyle(
                        color: Colors.brown.shade200,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ],
        ),
      );

  Widget text() => Text(
        "  - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - ",
        style: TextStyle(color: Colors.grey),
      );

  Widget bottom({String text}) => Row(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: Column(
              children: [
                Text(
                  text,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Spacer(),
          Column(
            children: [
              Row(
                children: [
                  IconButton(
                      icon: Icon(Icons.security_outlined), onPressed: () {}),
                  Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: Column(
                      children: [
                        Text(
                          "View",
                          style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                        // Text(
                        //   "______",
                        //   style: TextStyle(
                        //       color: Colors.red,
                        //       fontWeight: FontWeight.bold,
                        //       fontSize: 16),
                        // )
                      ],
                    ),
                  )
                ],
              )
            ],
          )
        ],
      );

  widget({Column child}) {}
}
