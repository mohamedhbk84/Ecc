import 'package:flutter/material.dart';
import 'package:project/constants.dart';
import 'package:project/shared/components.dart';

class SendNotificationScreen extends StatelessWidget {
  SendNotificationScreen({
    Key key,
  }) : super(key: key);

  String imployeesValue;
  final TextEditingController notesController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          title: "send Notification",
          search: false,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              customDropdownMenu(
                  label: "Assigned To (Multiple)",
                  hintText: "Select Imployees",
                  value: imployeesValue,
                  itemList: [],
                  onChanged: (value) {}),
              customTextField(
                  controller: notesController,
                  keyboardType: TextInputType.text,
                  label: "Notes",
                  hintText: "Notes",
                  maxLines: 5),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                ),
                child: defaultButton(
                    text: "Send", onPressed: () {}, color: kPrimaryColor),
              )
            ],
          ),
        ),
      ),
    );
  }
}
