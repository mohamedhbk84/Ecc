import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:multi_select_flutter/dialog/multi_select_dialog_field.dart';
import 'package:multi_select_flutter/util/multi_select_item.dart';
import 'package:multi_select_flutter/util/multi_select_list_type.dart';
import 'package:project/model/AllLocationsModel.dart';
import 'package:project/model/login_model.dart';
import 'package:project/shared/components.dart';
import 'package:project/shared/cubit/app_cubit.dart';
import 'package:project/shared/cubit/app_states.dart';
import 'package:project/view/vehicle/all_vehicles_screen.dart';
import 'package:sizer/sizer.dart';

import '../../constants.dart';
import '../../model/all_employees.dart';
import '../../model/all_employees.dart';
import '../../model/all_employees.dart';
import '../../model/all_employees.dart';
import '../../model/all_employees.dart';
import '../../model/all_employees.dart';
import '../../shared/cubit/app_cubit.dart';
import '../../shared/cubit/app_cubit.dart';

class CreateNewVehicles extends StatefulWidget {
  const CreateNewVehicles({Key key}) : super(key: key);

  @override
  _CreateNewVehiclesState createState() => _CreateNewVehiclesState();
}

class _CreateNewVehiclesState extends State<CreateNewVehicles> {
  final vehicleNumber = TextEditingController();
  final vehicleName = TextEditingController();
  final vehicleModel = TextEditingController();
  final vehicleStatus = TextEditingController();
  final kilometers = TextEditingController();
  final insuranceDateStart = TextEditingController();
  final insuranceDateEnd = TextEditingController();
  String licenseImage;
  final licenseNumber = TextEditingController();
  final licenseDateEnd = TextEditingController();
  File licenseFile;
  final examinationDate = TextEditingController();
  Users issuedTo;
  String driverLicense;
  List<String> locations;
  String carImage;
  List<Users> employeesList = [];
  List<Locations> locationsList = [];
  final notes = TextEditingController();
  AppCubit appCubit = AppCubit();

  List<Locations> _selectedLocations;

  File insuranceFile;

  File carPhoto;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getEmp();
    getLocations();
  }

  Future<void> getEmp() async {
    AllEmployeesModel allEmployeesModel = await appCubit.getEmployees();
    allEmployeesModel.users.forEach((element) {
      employeesList.add(element);
    });
    setState(() {

    });
  }

  Future<void> getLocations() async {
    AllLocationsModel allEmployeesModel = await appCubit.getLocations();
    allEmployeesModel.locations.forEach((element) {
      locationsList.add(element);
    });
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: CustomAppBar(
          title: "Create New Vehicle",
          search: false,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Create New Vehicle",
                  style: TextStyle(
                      color: kPrimaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 17),
                ),
                SizedBox(
                  height: 2.h,
                ),
                customTextField(
                  hintText: "Vehicle Number",
                  label: "Vehicle Number",
                  keyboardType: TextInputType.number,
                  controller: vehicleNumber,
                ),
                customTextField(
                    hintText: "Vehicle Name",
                    label: "Vehicle Name",
                    keyboardType: TextInputType.name,
                    controller: vehicleName),
                customTextField(
                    hintText: "Vehicle Model",
                    label: "Vehicle Model",
                    keyboardType: TextInputType.name,
                    controller: vehicleModel),
                customTextField(
                    hintText: "Maintenance",
                    label: "Vehicle Status",
                    keyboardType: TextInputType.text,
                    controller: vehicleStatus),
                customTextField(
                    hintText: "Kilometers",
                    label: "Kilometers",
                    keyboardType: TextInputType.number,
                    controller: kilometers),
                customTextField(
                    label: "Insurance Date Start",
                    hintText: "Enter Start date",
                    controller: insuranceDateStart,
                    suffix: Icons.calendar_today,
                    suffixFunction: () {
                      showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(2000),
                          lastDate: DateTime(2050))
                          .then((value) {
                        insuranceDateStart.text =
                            DateFormat("yyyy-MM-dd").format(value);
                      });
                    },
                    keyboardType: TextInputType.datetime),
                customTextField(
                  hintText: "Enter Deadline date",
                  label: "Insurance Date End",
                  controller: insuranceDateEnd,
                  keyboardType: TextInputType.datetime,
                  suffix: Icons.calendar_today,
                  suffixFunction: () {
                    showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2000),
                        lastDate: DateTime(2050))
                        .then((value) {
                      insuranceDateEnd.text =
                          DateFormat("yyyy-MM-dd").format(value);
                    });
                  },
                ),
                insuranceFile==null?uploadFile("Add Photo", () {showpanel("insurance");}):Image.file(carPhoto,height: 80,width: double.infinity,),
                customTextField(
                    hintText: "License Number",
                    label: "License Number",
                    keyboardType: TextInputType.number,
                    controller: licenseNumber),
                customTextField(
                  hintText: "License Date End",
                  label: "License Date End",
                  keyboardType: TextInputType.datetime,
                  controller: licenseDateEnd,
                  suffix: Icons.calendar_today,
                  suffixFunction: () {
                    showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2000),
                        lastDate: DateTime(2050))
                        .then((value) {
                      licenseDateEnd.text =
                          DateFormat("yyyy-MM-dd").format(value);
                    });
                  },
                ),
                licenseFile==null?uploadFile("Upload Driver License", () {showpanel("license");}):Image.file(carPhoto,height: 80,width: double.infinity,),
                customTextField(
                  hintText: "Examination Date",
                  label: "Examination Date",
                  controller: examinationDate,
                  keyboardType: TextInputType.datetime,
                  suffix: Icons.calendar_today,
                  suffixFunction: () {
                    showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2000),
                        lastDate: DateTime(2050))
                        .then((value) {
                      examinationDate.text =
                          DateFormat("yyyy-MM-dd").format(value);
                    });
                  },
                ),
                FutureBuilder<AllEmployeesModel>(
                    future: appCubit.getEmployees(),
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        print("pppppppp${snapshot.data.users}");
                        return customDropdownMenu(
                            onChanged: (value) {
                              setState(() {
                                issuedTo = value;
                                print(issuedTo);
                              });
                            },

                            itemList: employeesList.map<DropdownMenuItem<
                                Users>>((Users value2) {
                              return DropdownMenuItem<Users>(
                                value: value2,
                                child: Container(
                                    width: 90,
                                    child: Text(value2.name)),
                              );
                            }).toList(),
                            hintText: "Choose from Employees",
                            value: issuedTo ?? null,
                            label: "Issued To(single)");
                      } else {
                        return Center(child: CircularProgressIndicator());
                      }
                    }
                ),

                carPhoto==null?uploadFile("Upload Car Photo", () {showpanel("");}):Image.file(carPhoto,height: 80,width: double.infinity,),
                SizedBox(height: 10,),
                MultiSelectDialogField(
                  height: 60,
                  title: Text("Choose from Locations"),
                  searchHint: "Choose from Locations",
                  buttonText: Text("Choose from Locations"),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      border: Border.all(width: 0.5, color: Colors.grey)
                  ),
                  items: locationsList.map((e) =>
                      MultiSelectItem(e, e.location)).toList(),
                  listType: MultiSelectListType.CHIP,
                  onConfirm: (values) {
                    _selectedLocations = values;
                  },
                ),
                // customDropdownMenu(
                //     onChanged: (value) {},
                //     itemList: [],
                //     hintText: "Choose from Locations",
                //     value: locations,
                //     label: "Assigned Location(Multiple)"),
                // uploadFile("Upload Car Photo", () {}),
                customTextField(
                  hintText: "Notes",
                  label: "Notes",
                  controller: notes,
                  keyboardType: TextInputType.text,
                ),
                defaultButton(
                    text: "Save Vehicle",
                    onPressed: () {
                      List<String>locationsIds=[];
                      _selectedLocations.forEach((element) {
                        locationsIds.add(element.id.toString());
                      });
                      print("fonvfkjnvdfjkvndfkjvnfvjkfdnjkfnvdfjknvdfkjndfjkvndfkj");

                      AppCubit.get(context).addVehicle(
                          name: vehicleName.text,
                          number: vehicleNumber.text,
                          model: vehicleModel.text,
                          status: vehicleStatus.text,
                          kilometer: kilometers.text,
                          carPhoto: carPhoto,
                          userId: issuedTo.id.toString(),
                          driverLicense: licenseNumber.text,
                          insuranceDateStart: insuranceDateStart.text,
                          examinationDate: examinationDate.text,
                          locations: locationsIds.join(","),
                          insurancePhoto: insuranceFile,
                          licenseNumber: licenseNumber.text,
                          licenseDateEnd: licenseDateEnd.text,
                          insuranceDateEnd: insuranceDateEnd.text,
                          licensePhoto: licenseFile, notes: notes.text);
                    },
                    color: kPrimaryColor),
                Align(
                  alignment: Alignment.center,
                  child: TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      "Return To All vehicle",
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: kRedColor,
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
    );
  }

  Widget uploadFile(String title, Function onPress) {
    return InkWell(
      onTap: onPress,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.grey)),
        height: 100,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(title),
              SizedBox(
                width: 4,
              ),
              Image.asset(
                "assets/images/upload.png",
              ),
            ],
          ),
        ),
      ),
    );
  }

  void showpanel(type) {
    showModalBottomSheet(
        context: context,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        builder: (context) {
          var size = MediaQuery
              .of(context)
              .size;
          var sHeight = MediaQuery
              .of(context)
              .size
              .height;
          var sWidth = MediaQuery
              .of(context)
              .size
              .width;
          return Container(
            height: size.height * .16,
            width: size.width,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius:
                BorderRadius.all(Radius.circular(30))),
            child: Stack(
              children: [
                Positioned(
                  top: size.height * .0008,
                  left: size.width * .38,
                  child: Text(
                    "upload image",
                    style: (TextStyle(color: Colors.blue, fontSize: 20)),
                  ),
                ),
                Positioned(
                  top: size.height * .04,
                  right: size.width * .03,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              openGallary(type);
                            },
                            child: Container(
                              height: sHeight * .07,
                              width: sWidth * .15,
                              child: Image.asset(
                                'assets/images/gallery.png',
                                width: sWidth,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Text("الصور", style: TextStyle(
                            fontFamily: 'Cairo',
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.black54,
                          )),
                        ],
                      ),
                      SizedBox(width: sWidth * .2,),
                      Column(
                        children: [
                          InkWell(
                            onTap: () {
                              //   showpanel() ;
                              openCamera(type);
                            },
                            child: Container(
                              height: sHeight * .07,
                              width: sWidth * .15,
                              child: Image.asset(
                                'assets/images/camera.png',
                                width: sWidth,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Text("الكاميرا", style: TextStyle(
                            fontFamily: 'Cairo',
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.black54,
                          )),
                        ],
                      ),

                    ],
                  ),
                ),
              ],
            ),
          );
        });
  }


  Future<void> openGallary(type) async{
    PickedFile picture = await ImagePicker.platform.pickImage(source: ImageSource.gallery);
    setState(() {
      if(type=="insurance") {
        insuranceFile = File(picture.path);
      }else if(type=="license"){
        licenseFile = File(picture.path);
      }else{
        carPhoto = File(picture.path);
      }
      Navigator.of(context).pop();
    });
  }

  Future<void> openCamera(type) async{
    PickedFile picture = await ImagePicker.platform.pickImage(source: ImageSource.camera);
    setState(() {
      if(type=="insurance") {
        insuranceFile = File(picture.path);
      }else if(type=="license"){
        licenseFile = File(picture.path);
      }else{
        carPhoto = File(picture.path);
      }
      Navigator.of(context).pop();
    });
  }
}
