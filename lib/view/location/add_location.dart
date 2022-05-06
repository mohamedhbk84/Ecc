import 'package:flutter/material.dart';
import 'package:project/shared/components.dart';

class Add_Location extends StatelessWidget {
  const Add_Location({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myCustomAppBar(
        context: context,
        title: 'Locations',
        search: false,
        haveNotf: true,
        haveBell: true,
        canPop: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Create New Location',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(
              height: 8,
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.grey)),
                labelText: "Location Title",
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.grey)),
                      labelText: "Location Title",
                    ),
                  ),
                ),
                Container(
                  width: 50,
                  height: 50,
                  child: Image.asset("assets/images/Group 1894.png"),
                ),
              ],
            ),
            Spacer(),
            defaultButton(
              onPressed: () {},
              text: 'Save Location',
              color: const Color(0xFF293E4D),
              height: 60,
            )
          ],
        ),
      ),
    );
  }
}
