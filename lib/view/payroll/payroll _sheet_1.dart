import 'package:flutter/material.dart';
import 'package:project/shared/components.dart';

class Payroll_Sheet_1 extends StatelessWidget {
  const Payroll_Sheet_1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: myCustomAppBar(
          title: 'Mohamed Ahmed\n Salary',
          context: context,
          canPop: true,
          haveBell: true,
          haveNotf: true),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
              child: Row(
                children: [
                  Expanded(
                      flex: 1,
                      child: Text(
                        'Your Salary till',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )),
                  Expanded(flex: 1, child: Text('15-June -2021'))
                ],
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadiusDirectional.only(
                      topStart: Radius.circular(25),
                      topEnd: Radius.circular(25))),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Column(
                  children: [
                    item(title: 'Emloyee ID', description: '23'),
                    item(title: 'Employee Name', description: 'Mohamed Ahmed'),
                    item(title: 'Month', description: 'June 2021'),
                    item(title: 'Working Days', description: '8'),
                    item(title: 'Working Hours', description: '160'),
                    item(title: 'National Vacations', description: '2'),
                    item(title: 'Vacation Days', description: '2'),
                    item(title: 'Absents Days', description: '23'),
                    Divider(
                      color: Colors.grey,
                    ),
                    item(title: 'Salary', description: '5000 SAR'),
                    item(
                        title: 'Accomidition  Allowance',
                        description: '5000 SAR'),
                    item(
                        title: 'Transportation Allowance',
                        description: '5000 SAR'),
                    item(title: 'Phone  Allowance', description: '5000 SAR'),
                    item(title: 'Other Allowance', description: '5000 SAR'),
                    Divider(
                      color: Colors.grey,
                    ),
                    item(title: 'Delay Penalty', description: '23'),
                    Divider(
                      color: Colors.grey,
                    ),
                    item(title: 'Bounce', description: '5000 SAR'),
                    item(title: 'Reason', description: 'Good Job'),
                    item(title: 'Submitted BY', description: 'Khaled Ali'),
                    Divider(
                      color: Colors.grey,
                    ),
                    item(title: 'Total :', description: '1000000'),
                    Divider(
                      color: Colors.grey,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: 66.0,
                          height: 62.0,
                          child: Image.asset("assets/images/printer.png"),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9.0),
                            color: const Color(0xFFCE3827),
                          ),
                        ),
                        // Group: Group 1786
                        Container(
                          alignment: Alignment(0.0, -0.11),
                          width: 258.0,
                          height: 62.0,
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
                          child: Text(
                            'Export',
                            style: TextStyle(
                              fontSize: 17.0,
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget item({
    @required String title,
    @required String description,
  }) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Row(
        children: [
          Expanded(
              flex: 1,
              child: Text(
                title,
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
          Expanded(flex: 1, child: Text(description))
        ],
      ),
    );
  }
}
