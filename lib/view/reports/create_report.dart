import 'package:flutter/material.dart';
import 'package:project/shared/components.dart';

class Create_Report extends StatelessWidget {
  Create_Report({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myCustomAppBar(
          context: context,
          title: 'Add Report',
          canPop: true,
          haveBell: true,
          haveNotf: true),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.grey)),
                  labelText: "Select Location",
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.grey)),
                  labelText: "Select Location",
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                maxLines: 5,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.grey)),
                  labelText: "Select Location",
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                maxLines: 5,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.grey)),
                  labelText: "Select Location",
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Attach Photos (Optional)',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  uploadFile(),
                  SizedBox(
                    width: 8,
                  ),
                  uploadFile()
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  uploadFile(),
                  SizedBox(
                    width: 8,
                  ),
                  uploadFile()
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Task Report',
                style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              SizedBox(
                height: 10,
              ),
              Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  Container(
                    height: 80,
                  ),
                  Container(
                    height: 60,
                    margin: EdgeInsets.fromLTRB(1, 1, 1, 1),
                    padding: EdgeInsets.only(bottom: 1, right: 1, left: 1),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 1),
                      borderRadius: BorderRadius.circular(10),
                      shape: BoxShape.rectangle,
                    ),
                    child: Row(
                      children: [
                        Text(""),
                        Spacer(),
                        Icon(Icons.arrow_downward),
                        SizedBox(
                          width: 20,
                        )
                      ],
                    ),
                  ),
                  Positioned(
                      left: 20,
                      top: 0,
                      child: Container(
                        padding: EdgeInsets.only(bottom: 2, left: 2, right: 2),
                        color: Colors.white,
                        child: Text(
                          'Select Task',
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                      )),
                  // Group: Group 1786
                ],
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.grey)),
                  labelText: "Select Location",
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Add Another Task',
                style: TextStyle(
                    decoration: TextDecoration.underline, color: Colors.indigo),
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 30, right: 30, top: 10, bottom: 10),
                      child: Container(
                        child: Center(
                            child: Text(
                          'Submit Report',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        )),
                        height: 60,
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
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget uploadFile() {
    return Expanded(
        flex: 1,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.grey, width: 1)),
          height: 100,
          child: Center(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Upload  File'),
                SizedBox(
                  width: 4,
                ),
                Image.asset(
                  "assets/images/upload.png",
                ),
              ],
            ),
          ),
        ));
  }
}
