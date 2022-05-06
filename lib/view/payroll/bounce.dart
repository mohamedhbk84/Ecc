import 'package:flutter/material.dart';
import 'package:project/shared/components.dart';

class Bounce_Screen extends StatelessWidget {
  const Bounce_Screen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: myCustomAppBar(
            context: context,
            title: "Bounce",
            haveNotf: false,
            haveBell: false,
            canPop: true),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 4),
                child: Text(
                  'Create New Bounce ',
                  style: TextStyle(),
                ),
              ),
              Stack(
                children: <Widget>[
                  Container(
                    height: 50,
                    margin: EdgeInsets.fromLTRB(20, 20, 20, 10),
                    padding: EdgeInsets.only(bottom: 10, right: 10, left: 10),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 2),
                      borderRadius: BorderRadius.circular(10),
                      shape: BoxShape.rectangle,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Text(""), Icon(Icons.arrow_downward)],
                    ),
                  ),
                  Positioned(
                      left: 50,
                      top: 12,
                      child: Container(
                        padding: EdgeInsets.only(bottom: 2, left: 2, right: 2),
                        color: Colors.white,
                        child: Text(
                          'Employees (Multiple)',
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                      )),
                ],
              ),
              Stack(
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      showDatePicker(
                        context: context,
                        initialDate: DateTime(2020),
                        currentDate: DateTime.now(),
                        lastDate: DateTime(2050),
                        firstDate: DateTime(2015),
                      );
                    },
                    child: Container(
                      height: 50,
                      margin: EdgeInsets.fromLTRB(20, 20, 20, 10),
                      padding: EdgeInsets.only(bottom: 10, right: 10, left: 10),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 2),
                        borderRadius: BorderRadius.circular(10),
                        shape: BoxShape.rectangle,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(" "),
                          Icon(
                            Icons.calendar_today_outlined,
                            color: Colors.black,
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                      left: 50,
                      top: 12,
                      child: Container(
                        padding: EdgeInsets.only(bottom: 2, left: 2, right: 2),
                        color: Colors.white,
                        child: Text(
                          'Date',
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                      )),
                ],
              ),
              Stack(
                children: <Widget>[
                  Container(
                    height: 50,
                    margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
                    padding: EdgeInsets.only(bottom: 0, right: 0, left: 0),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 2),
                      borderRadius: BorderRadius.circular(10),
                      shape: BoxShape.rectangle,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(child: TextField()),
                        Container(
                          height: 50,
                          child: Icon(Icons.arrow_downward),
                          width: 70,
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(8))),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                      left: 50,
                      top: 12,
                      child: Container(
                        padding: EdgeInsets.only(bottom: 2, left: 2, right: 2),
                        color: Colors.white,
                        child: Text(
                          'Bounce  Amount',
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                      )),
                ],
              ),
              Stack(
                children: <Widget>[
                  Container(
                      height: 50,
                      margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
                      padding: EdgeInsets.only(bottom: 0, right: 0, left: 0),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 2),
                        borderRadius: BorderRadius.circular(10),
                        shape: BoxShape.rectangle,
                      ),
                      child: TextField()),
                  Positioned(
                      left: 50,
                      top: 12,
                      child: Container(
                        padding: EdgeInsets.only(bottom: 2, left: 2, right: 2),
                        color: Colors.white,
                        child: Text(
                          'Bounce  Amount',
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                      )),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Center(
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          const Color(0xFF293E4D),
                          const Color(0xFF10181E)
                        ],
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'Submit ',
                        style: TextStyle(
                          fontSize: 17.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
