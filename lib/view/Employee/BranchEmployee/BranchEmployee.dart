import 'package:flutter/material.dart';
import 'package:project/shared/ComponentButton.dart';

import '../../../constants.dart';

class BranchEmployee extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: CustomAppBar3(
        //   title: "ُTask Details",
        //   search: false,
        // ),
        body: Padding(
          padding: EdgeInsets.only(left: 10),
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              line(
                  context: context,
                  name: "Task Name",
                  branch: "Design LandScape"),
              line(
                  context: context,
                  name: "Assigin Project",
                  branch: "New Building 1"),
              line(context: context, name: "Start Date", branch: "16-Jul-2021"),
              line(context: context, name: "End Date", branch: "29-Jun-2021"),
              line(context: context, name: "Task Admin", branch: "Khaled Ali"),
              line(
                  context: context,
                  name: "Assigned to",
                  branch: "Mohamed Ahmed  Salim Saied"),
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
                "the official language of Britain, the US, most parts of the Commonwealth, and certain other countries. It is the native language of over 280 million people and is acquired as a second language by many more. It is an Indo-European language belonging to the West Germanic branch",
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
              Padding(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: Row(
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
              ),
              Row(
                children: [
                  Expanded(
                    child: Row(
                      children: [],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Text(
                          "Accept",
                          style: TextStyle(
                              color: Colors.green,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        Text(
                          "Reject",
                          style: TextStyle(
                              color: Colors.green,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  children: [
                    Text(
                      "Saied Saied",
                      style: TextStyle(
                          color: Colors.brown.shade200,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Text(
                      "20 %",
                      style: TextStyle(
                          color: Colors.brown.shade200,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Row(
                      children: [],
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: Row(
                        children: [
                          Text(
                            "Accept",
                            style: TextStyle(
                                color: Colors.green,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                          Spacer(),
                          Text(
                            "Reject",
                            style: TextStyle(
                                color: Colors.red,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              defaultButton(
                  width: MediaQuery.of(context).size.width - 100,
                  background: kPrimaryColor,
                  text: "Save",
                  function: () {
                    ////// Dialog...////
                    //   context: context,
                    //   builder: (context) {
                    //     return
                    //      Container(
                    //       width: MediaQuery.of(context).size.width - 100,
                    //       height: 200,
                    //       color: Colors.white,
                    //       decoration: BoxDecoration(
                    //           borderRadius: BorderRadius.circular(20)),
                    //       child: Dialog(
                    //         backgroundColor: Colors.white,
                    //         child: Padding(
                    //           padding: const EdgeInsets.symmetric(
                    //               horizontal: 20, vertical: 40),
                    //           child: Column(
                    //             crossAxisAlignment: CrossAxisAlignment.start,
                    //             mainAxisSize: MainAxisSize.min,
                    //             children: [
                    //               Text(
                    //                 "Create New Invoice",
                    //                 style: TextStyle(
                    //                     color: Colors.black,
                    //                     fontWeight: FontWeight.bold,
                    //                     fontSize: 17),
                    //               ),
                    //               SizedBox(
                    //                 height: 2.0,
                    //               ),
                    //               Row(
                    //                 mainAxisSize: MainAxisSize.min,
                    //                 children: [
                    // defaultFormField(
                    //     hintText: "Send Note To Employee",
                    //     type: TextInputType.text),
                    //                 ],
                    //               ),
                    //               SizedBox(
                    //                 height: 2.0,
                    //               ),
                    //               SizedBox(
                    //                 height: 2.0,
                    //               ),
                    //               defaultButton(text: "Send", onPressed: () {})
                    //             ],
                    //           ),
                    //         ),
                    //       ),
                    //     );
                    //   },
                    // );

                    showDialog<String>(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                        title: const Text(
                          'You Have Rejected Task Progress',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.bold),
                        ),
                        content: TextFormField(
                          decoration: InputDecoration(
                            isDense: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  BorderSide(color: Colors.black, width: 2),
                            ),
                            hintText: "Send Your Notification",
                            filled: true,
                            fillColor: Colors.white,
                            hintStyle: const TextStyle(
                                color: Color(0xffC8C8C8), fontSize: 11),
                          ),
                        ),
                        actions: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(
                                left: 10, right: 10, bottom: 18),
                            child: defaultButton(
                                width: MediaQuery.of(context).size.width - 100,
                                background: kPrimaryColor,
                                text: "Send",
                                function: () {}),
                          ),
                        ],
                      ),
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }

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
}
