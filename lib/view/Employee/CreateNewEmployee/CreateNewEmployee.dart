import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:project/shared/ComponentButton.dart';

class CreateNewEmployee extends StatefulWidget {
  @override
  _CreateNewEmployeeState createState() => _CreateNewEmployeeState();
}

class _CreateNewEmployeeState extends State<CreateNewEmployee> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController postionController = TextEditingController();
  TextEditingController contactController = TextEditingController();
  TextEditingController idController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController joiningController = TextEditingController();
  TextEditingController contractController = TextEditingController();
  TextEditingController insuranceStartController = TextEditingController();
  TextEditingController insuranceEndController = TextEditingController();
  TextEditingController attachmentController = TextEditingController();
  TextEditingController salaryController = TextEditingController();
  TextEditingController workingStartController = TextEditingController();
  TextEditingController workingEndController = TextEditingController();
  TextEditingController workingDayController = TextEditingController();
  TextEditingController accountinationController = TextEditingController();
  TextEditingController transportationController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController otherController = TextEditingController();
  TextEditingController subController = TextEditingController();
  TextEditingController detuctionController = TextEditingController();
  TextEditingController vactionController = TextEditingController();
  TextEditingController overtimeController = TextEditingController();
  TextEditingController repeatController = TextEditingController();
  int group1Value;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              ////  addd photo and Circle Button  //// /
              Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width / 2 - 40,
                      height: 120,
                      child: DottedBorder(
                        color: Colors.grey,
                        strokeWidth: 2,
                        borderType: BorderType.Rect,
                        dashPattern: [6, 6],
                        //dash patterns, 10 is dash width, 6 is space width
                        child: Container(
                          decoration: BoxDecoration(
                              color: Color(0xffFCFCF2),
                              borderRadius: BorderRadius.circular(20)),
                          child: Center(
                              child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Add Photo"),
                              SizedBox(
                                width: 10,
                              ),
                              Image(
                                image: AssetImage(
                                  "assets/images/Icon feather-upload-cloud.png",
                                ),
                                fit: BoxFit.fill,
                                color: Colors.grey,
                              ),
                            ],
                          )),
                        ),
                      ),
                    ),
                    //////// Circle  Radio
                    SizedBox(
                      width: 20,
                    ),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Employee Type",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        //////// radio 1
                        Container(
                          height: 20,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Radio(
                                value: 1,
                                fillColor: MaterialStateColor.resolveWith(
                                    (states) => Colors.red),
                                groupValue: group1Value,
                                onChanged: (value) {
                                  setState(() {
                                    group1Value = value;
                                  });
                                },
                              ),
                              Text(
                                "Part Time",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        //////// radio 2
                        Row(
                          children: [
                            Radio(
                              value: 2,
                              fillColor: MaterialStateColor.resolveWith(
                                  (states) => Colors.red),
                              groupValue: group1Value,
                              onChanged: (value) {
                                setState(() {
                                  group1Value = value;
                                });
                              },
                            ),
                            Text(
                              "FreeLancer",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        //////////// radio 3
                        Container(
                          height: 25,
                          child: Row(
                            children: [
                              Radio(
                                fillColor: MaterialStateColor.resolveWith(
                                    (states) => Colors.red),
                                focusColor: Colors.red,
                                value: 3,
                                groupValue: group1Value,
                                onChanged: (value) {
                                  setState(() {
                                    group1Value = value;
                                  });
                                },
                              ),
                              Text(
                                "Regulary",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              Padding(
                padding:
                    EdgeInsets.only(left: 15, right: 15, top: 20, bottom: 10),
                child: newTaskField(
                  controller: usernameController,
                  label: "User Name",
                  hintText: "User Name",
                  keyboardType: TextInputType.text,
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 10),
                child: newTaskField(
                  controller: passwordController,
                  label: "Password",
                  hintText: "Password",
                  keyboardType: TextInputType.visiblePassword,
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 10),
                child: newTaskField(
                  controller: emailController,
                  label: "Email",
                  hintText: "Email",
                  keyboardType: TextInputType.emailAddress,
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 10),
                child: newTaskField(
                  controller: postionController,
                  label: "Postion",
                  hintText: "Postion",
                  keyboardType: TextInputType.text,
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 10),
                child: newTaskField(
                  controller: contactController,
                  label: "Contact Details",
                  hintText: "Contact Details",
                  keyboardType: TextInputType.text,
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 10),
                child: newTaskField(
                  controller: idController,
                  label: "Iqama or ID",
                  hintText: "Iqama or ID",
                  keyboardType: TextInputType.number,
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 10),
                child: newTaskField(
                  controller: dateController,
                  label: "End Date",
                  hintText: "End Date",
                  keyboardType: TextInputType.datetime,
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width - 40,
                height: 120,
                child: DottedBorder(
                  color: Colors.grey,
                  strokeWidth: 2,
                  borderType: BorderType.Rect,
                  dashPattern: [6, 6],
                  //dash patterns, 10 is dash width, 6 is space width
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color(0xffFCFCF2),
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Upload Iqama Image",
                          style: TextStyle(
                              color: Colors.grey[400],
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Image(
                          image: AssetImage(
                            "assets/images/Icon feather-upload-cloud.png",
                          ),
                          fit: BoxFit.fill,
                          color: Colors.grey,
                        ),
                      ],
                    )),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding:
                    EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 10),
                child: newTaskField(
                  controller: joiningController,
                  label: "Joining Date",
                  hintText: "Joining Date",
                  keyboardType: TextInputType.datetime,
                  icon: Icon(
                    Icons.date_range,
                    color: Colors.grey[300],
                  ),
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 10),
                child: newTaskField(
                  controller: contractController,
                  label: "Contract End",
                  hintText: "Contract End",
                  keyboardType: TextInputType.datetime,
                  icon: Icon(
                    Icons.date_range,
                    color: Colors.grey[300],
                  ),
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 10),
                child: newTaskField(
                  controller: insuranceStartController,
                  label: "Insurance Date Start",
                  hintText: "Insurance Date Start",
                  keyboardType: TextInputType.datetime,
                  icon: Icon(
                    Icons.date_range,
                    color: Colors.grey[300],
                  ),
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 10),
                child: newTaskField(
                  controller: insuranceEndController,
                  label: "Insurance Date End",
                  hintText: "Insurance Date End",
                  keyboardType: TextInputType.datetime,
                  icon: Icon(
                    Icons.date_range,
                    color: Colors.grey[300],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: MediaQuery.of(context).size.width - 40,
                height: 80,
                child: DottedBorder(
                  color: Colors.grey,
                  strokeWidth: 2,
                  borderType: BorderType.Rect,
                  dashPattern: [6, 6],
                  //dash patterns, 10 is dash width, 6 is space width
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color(0xffFCFCF2),
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Upload Insuarance Photo",
                          style: TextStyle(
                              color: Colors.grey[400],
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Image(
                          image: AssetImage(
                            "assets/images/Icon feather-upload-cloud.png",
                          ),
                          fit: BoxFit.fill,
                          color: Colors.grey,
                        ),
                      ],
                    )),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding:
                    EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 10),
                child: newTaskField(
                  controller: attachmentController,
                  label: "",
                  hintText: "attatchment link",
                  keyboardType: TextInputType.text,
                  icon: Icon(
                    Icons.attachment,
                    color: Colors.grey[300],
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width - 40,
                height: 80,
                child: DottedBorder(
                  color: Colors.grey,
                  strokeWidth: 2,
                  borderType: BorderType.Rect,
                  dashPattern: [6, 6],
                  //dash patterns, 10 is dash width, 6 is space width
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color(0xffFCFCF2),
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Upload Other Files",
                          style: TextStyle(
                              color: Colors.grey[400],
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Image(
                          image: AssetImage(
                            "assets/images/Icon feather-upload-cloud.png",
                          ),
                          fit: BoxFit.fill,
                          color: Colors.grey,
                        ),
                      ],
                    )),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding:
                    EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 10),
                child: newTaskField(
                  controller: salaryController,
                  label: "Basic Salary",
                  hintText: "Basic Salary",
                  keyboardType: TextInputType.text,
                ),
              ),

              Padding(
                  padding: EdgeInsets.all(15),
                  child: Row(
                    children: [
                      newTaskField(
                          controller: workingStartController,
                          label: "Working Start time",
                          hintText: "Start time",
                          keyboardType: TextInputType.number,
                          icon: Icon(Icons.timeline)),
                      SizedBox(
                        width: 20,
                      ),
                      newTaskField(
                          controller: workingEndController,
                          label: "Working End time",
                          hintText: "End time",
                          keyboardType: TextInputType.number,
                          icon: Icon(Icons.timeline)),
                    ],
                  )),

              Padding(
                padding:
                    EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 10),
                child: newTaskField(
                    controller: workingDayController,
                    label: "Working Days (Multiple) ",
                    hintText: "Select Day",
                    keyboardType: TextInputType.text,
                    icon: Icon(
                      Icons.arrow_circle_up,
                      color: Colors.grey[300],
                    )),
              ),
              Padding(
                  padding: EdgeInsets.all(15),
                  child: Row(
                    children: [
                      newTaskField(
                        controller: accountinationController,
                        label: "Accountion",
                        hintText: "accountion",
                        keyboardType: TextInputType.text,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      newTaskField(
                        controller: transportationController,
                        label: "Transportion",
                        hintText: "transportion",
                        keyboardType: TextInputType.text,
                      ),
                    ],
                  )),

              Padding(
                  padding: EdgeInsets.all(15),
                  child: Row(
                    children: [
                      newTaskField(
                        controller: phoneController,
                        label: "Phone",
                        hintText: "Phone",
                        keyboardType: TextInputType.number,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      newTaskField(
                        controller: otherController,
                        label: "Other",
                        hintText: "Other",
                        keyboardType: TextInputType.text,
                      ),
                    ],
                  )),

              Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "With over Time",
                      style: TextStyle(fontSize: 14),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 10),
                child: newTaskField(
                    controller: subController,
                    label: "Sub Employeee ",
                    hintText: "Choose From Employee",
                    keyboardType: TextInputType.text,
                    icon: Icon(
                      Icons.arrow_circle_up,
                      color: Colors.grey[300],
                    )),
              ),

              Padding(
                padding:
                    EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 10),
                child: newTaskField(
                    controller: detuctionController,
                    label: "Detuction/Bounce",
                    hintText: "Choose From Employee",
                    keyboardType: TextInputType.text,
                    icon: Icon(
                      Icons.arrow_circle_up,
                      color: Colors.grey[300],
                    )),
              ),
              Padding(
                padding:
                    EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 10),
                child: newTaskField(
                    controller: vactionController,
                    label: "Vaction Approval",
                    hintText: "Choose From Employee",
                    keyboardType: TextInputType.text,
                    icon: Icon(
                      Icons.arrow_circle_up,
                      color: Colors.grey[300],
                    )),
              ),
              Padding(
                padding:
                    EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 10),
                child: newTaskField(
                    controller: overtimeController,
                    label: "OverTime Approval",
                    hintText: "Choose From Employee",
                    keyboardType: TextInputType.text,
                    icon: Icon(
                      Icons.arrow_circle_up,
                      color: Colors.grey[300],
                    )),
              ),

              Padding(
                padding:
                    EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 10),
                child: newTaskField(
                    controller: repeatController,
                    label: "Report Approval",
                    hintText: "Choose From Employee",
                    keyboardType: TextInputType.text,
                    icon: Icon(
                      Icons.arrow_circle_up,
                      color: Colors.grey[300],
                    )),
              ),

              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                      padding: EdgeInsets.all(15),
                      child: defaultButtonnew(
                          text: "Save Empolyee", onPressed: () {})),
                  Text(
                    "Return To All Employee",
                    style: TextStyle(
                        color: Colors.red,
                        decoration: TextDecoration.underline),
                  )
                ],
              ),
              ////////////////////////////
            ],
          ),
        ),
      ),
    );
  }
}
