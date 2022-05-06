import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project/constants.dart';
import 'package:project/shared/components.dart';

class CreateVacationScreen extends StatelessWidget {
  final vacationName = TextEditingController();
  final startDate = TextEditingController();
  final endDate = TextEditingController();
  final reason = TextEditingController();
  List<String> assignedTo;
  String vacationType;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "Vocations",
        search: false,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Create Vacation Request",
                style: TextStyle(
                    color: kPrimaryColor,
                    fontSize: 17,
                    fontWeight: FontWeight.bold),
              ),
              customDropdownMenu(
                  itemList: [],
                  value: vacationType,
                  onChanged: (value) {},
                  hintText: "Paid",
                  label: "Vacation Type"),
              customTextField(
                  controller: vacationName,
                  label: "Vacation Name",
                  keyboardType: TextInputType.name,
                  hintText: "Ex: National Days"),
              customTextField(
                  controller: startDate,
                  label: "Start Date",
                  keyboardType: TextInputType.datetime,
                  hintText: "Select Date",
                  suffix: Icons.calendar_today,
                  suffixFunction: () {
                    showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(2000),
                            lastDate: DateTime(2050))
                        .then((value) {
                      startDate.text = value.toString();
                    });
                  }),
              customTextField(
                  controller: endDate,
                  label: "End Date",
                  keyboardType: TextInputType.datetime,
                  hintText: "Select Date",
                  suffix: Icons.calendar_today,
                  suffixFunction: () {
                    showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(2000),
                            lastDate: DateTime(2050))
                        .then((value) {
                      endDate.text = value.toString();
                    });
                  }),
              customDropdownMenu(
                  itemList: [],
                  onChanged: (value) {},
                  value: assignedTo,
                  hintText: "Select Employees",
                  label: "Assigned To(Multiple)"),
              customTextField(
                  controller: reason,
                  label: "Reason",
                  keyboardType: TextInputType.text,
                  hintText: "Reason"),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: defaultButton(
                    text: "Submit Request",
                    onPressed: () {},
                    color: kPrimaryColor),
              )
            ],
          ),
        ),
      ),
    );
  }
}
