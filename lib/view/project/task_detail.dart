import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:project/model/all_projects_model.dart';
import 'package:project/shared/ComponentButton.dart';
import '../../constants.dart';

class TaskDetails extends StatelessWidget {
  final Task model;
  TaskDetails({Key key, this.model}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar3(
          title: "Task Details",
          search: false,
        ),
        body: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              line(context: context, name: "Task Name", branch: model.name),
              line(
                  context: context,
                  name: "Assigin Project",
                  branch: model.name),
              line(
                  context: context,
                  name: "Start Date",
                  branch: DateFormat("yy-MM-dd").format(model.start)),
              line(
                  context: context,
                  name: "End Date",
                  branch: DateFormat("yy-MM-dd").format(model.end)),
              line(context: context, name: "Task Admin", branch: model.users),
              line(context: context, name: "Assigned to", branch: model.users),
              SizedBox(
                height: 8,
              ),
              Text(
                "Description",
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                model.desription,
                maxLines: 6,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                "Progress Update",
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 8,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: 2,
                  itemBuilder: (context, index) => taskDetails(),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.center,
                child: defaultButton(
                    width: MediaQuery.of(context).size.width - 100,
                    background: kPrimaryColor,
                    text: "Save",
                    function: () {}),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget line({context, String name, String branch}) => Row(
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
      );

  void showMyDialog(BuildContext context) {
    showDialog<bool>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: const Text(
            'Message',
          ),
          actions: <Widget>[
            // ignore: deprecated_member_use
            FlatButton(
              child: const Text('OK'),
              onPressed: () {
                Navigator.of(context).pop(true);
              },
            ),
          ],
        );
      },
    );
  }

  Widget taskDetails() => Column(
        children: [
          Row(
            children: [
              Text(
                "MOhamed Ahmed",
                style: TextStyle(
                    color: Colors.brown.shade200,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
              Spacer(),
              Text(
                "50 %",
                style: TextStyle(
                    color: Colors.brown.shade200,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 17, right: 17),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Accept",
                    style: TextStyle(
                        color: Colors.green,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Reject",
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ],
      );
}
