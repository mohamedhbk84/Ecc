// // import 'package:acc/shared/component/ComponentButton.dart';
// import 'package:acc/shared/constants.dart';
// import 'package:flutter/material.dart';

// class AttendenceScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     Size _size = MediaQuery.of(context).size;
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Attendance'),
//         centerTitle: true,
//         backgroundColor: kPrimaryColor,
//         elevation: 0,
//       ),
//       body: Container(
//         color: Colors.grey[100],
//         width: _size.width,
//         height: _size.height,
//         child: Stack(
//           children: [
//             Positioned(
//               right: 0,
//               left: 0,
//               bottom: 0,
//               child: Container(
//                 padding: EdgeInsets.only(left: 8, right: 8),
//                 height: _size.height * .62,
//                 color: Colors.grey[100],
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Row(
//                       children: [
//                         Expanded(
//                           child: Padding(
//                             padding: const EdgeInsets.all(8.0),
//                             child: Container(
//                               child: Center(
//                                   child: Text(
//                                 'Add Bounce',
//                                 style: TextStyle(
//                                     fontWeight: FontWeight.bold,
//                                     fontSize: 18,
//                                     color: Colors.white),
//                               )),
//                               height: 50,
//                               decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(8.0),
//                                 gradient: LinearGradient(
//                                   begin: Alignment.topCenter,
//                                   end: Alignment.bottomCenter,
//                                   colors: [
//                                     const Color(0xFF293E4D),
//                                     const Color(0xFF10181E)
//                                   ],
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ),
//                         Expanded(
//                           flex: 1,
//                           child: InkWell(
//                             onTap: () {},
//                             child:
// // Group: Group 69934
//                                 Padding(
//                               padding: const EdgeInsets.all(8.0),
//                               child: Container(
//                                 height: 50,
//                                 decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(8.0),
//                                   gradient: LinearGradient(
//                                     begin: Alignment.topCenter,
//                                     end: Alignment.bottomCenter,
//                                     colors: [
//                                       const Color(0xFFB0302B),
//                                       const Color(0xFFAF1E20)
//                                     ],
//                                   ),
//                                 ),
//                                 child: Center(
//                                   child: Text(
//                                     'Add Deduction ',
//                                     style: TextStyle(
//                                       fontSize: 18,
//                                       color: Colors.white,
//                                       fontWeight: FontWeight.w600,
//                                     ),
//                                     textAlign: TextAlign.center,
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ),
//                         )
//                       ],
//                     ),
//                     Text('Deduction/Bounce  List (3)'),
//                     Expanded(
//                       flex: 1,
//                       child: ListView.builder(
//                           itemCount: 100,
//                           itemBuilder: (context, pos) {
//                             return itemList(
//                                 size: _size,
//                                 context: context,
//                                 function: () {
//                                   //        navigateTo(context, const Payroll_Sheet_1());
//                                 });
//                           }),
//                     )
//                   ],
//                 ),
//               ),
//             ),
//             Container(
//               height: _size.height * .25,
//               decoration: const BoxDecoration(
//                 color: kPrimaryColor,
//                 borderRadius: BorderRadiusDirectional.only(
//                     bottomStart: Radius.circular(20),
//                     bottomEnd: Radius.circular(20)),
//               ),
//               child: Column(
//                 children: [
//                   Row(
//                     children: [
//                       Stack(
//                         children: <Widget>[
//                           InkWell(
//                             onTap: () {
//                               showDatePicker(
//                                 context: context,
//                                 initialDate: DateTime(2020),
//                                 currentDate: DateTime.now(),
//                                 lastDate: DateTime(2050),
//                                 firstDate: DateTime(2015),
//                               );
//                             },
//                             child: Container(
//                                 height: 50,
//                                 width: _size.width * .4,
//                                 margin: EdgeInsets.fromLTRB(20, 20, 20, 10),
//                                 padding: EdgeInsets.only(
//                                     bottom: 10, right: 10, left: 10),
//                                 decoration: BoxDecoration(
//                                   border:
//                                       Border.all(color: Colors.white, width: 2),
//                                   borderRadius: BorderRadius.circular(10),
//                                   shape: BoxShape.rectangle,
//                                 ),
//                                 child: TextField()),
//                           ),
//                           Positioned(
//                               left: 30,
//                               top: 12,
//                               child: Container(
//                                 padding: EdgeInsets.only(
//                                     bottom: 2, left: 2, right: 2),
//                                 color: Colors.black,
//                                 child: Text(
//                                   ' Employee ID',
//                                   style: TextStyle(
//                                       color: Colors.white, fontSize: 15),
//                                 ),
//                               )),
//                         ],
//                       ),
//                       Stack(
//                         children: <Widget>[
//                           Container(
//                               height: 50,
//                               width: _size.width * .4,
//                               margin: EdgeInsets.fromLTRB(20, 20, 20, 10),
//                               padding: EdgeInsets.only(
//                                   bottom: 10, right: 10, left: 10),
//                               decoration: BoxDecoration(
//                                 border:
//                                     Border.all(color: Colors.white, width: 2),
//                                 borderRadius: BorderRadius.circular(10),
//                                 shape: BoxShape.rectangle,
//                               ),
//                               child: TextField()),
//                           Positioned(
//                               left: 30,
//                               top: 12,
//                               child: Container(
//                                 padding: EdgeInsets.only(
//                                     bottom: 2, left: 2, right: 2),
//                                 color: Colors.black,
//                                 child: Text(
//                                   'Month',
//                                   style: TextStyle(
//                                       color: Colors.white, fontSize: 15),
//                                 ),
//                               )),
//                         ],
//                       ),
//                     ],
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(top: 16.0),
//                     child: Container(
//                       width: _size.width * .9,
//                       height: 50.0,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(8.0),
//                         gradient: LinearGradient(
//                           begin: Alignment.topCenter,
//                           end: Alignment.bottomCenter,
//                           colors: [
//                             const Color(0xFFF2503E),
//                             const Color(0xFFCE3827)
//                           ],
//                         ),
//                       ),
//                       child: Center(
//                         child: Text(
//                           'Search',
//                           style: TextStyle(
//                             fontSize: 17.0,
//                             color: Colors.white,
//                             fontWeight: FontWeight.w600,
//                           ),
//                           textAlign: TextAlign.center,
//                         ),
//                       ),
//                     ),
//                   )
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget itemList({Size size, BuildContext context, Function function}) {
//     return Padding(
//       padding: const EdgeInsets.only(top: 8.0),
//       child: Container(
//         padding: const EdgeInsets.all(4),
//         decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(10), color: Colors.white),
//         child: Row(
//           mainAxisSize: MainAxisSize.max,
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: [
//                     Container(
//                       width: size.width * .45,
//                       child: Text(
//                         "Employee Name",
//                         style: TextStyle(
//                             fontSize: 16, fontWeight: FontWeight.bold),
//                       ),
//                     ),
//                     Container(
//                       child: Text(
//                         "Mohamed Ahmed",
//                         style: TextStyle(
//                             fontSize: 12, fontWeight: FontWeight.normal),
//                       ),
//                     )
//                   ],
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: [
//                     Container(
//                       width: size.width * .45,
//                       child: Text(
//                         "Date",
//                         style: TextStyle(
//                             fontSize: 16, fontWeight: FontWeight.bold),
//                       ),
//                     ),
//                     Container(
//                       child: Text(
//                         "1-3-2021",
//                         style: TextStyle(
//                             fontSize: 12, fontWeight: FontWeight.normal),
//                       ),
//                     )
//                   ],
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: [
//                     Container(
//                       width: size.width * .45,
//                       child: Text(
//                         "Deduction",
//                         style: TextStyle(
//                             fontSize: 16, fontWeight: FontWeight.bold),
//                       ),
//                     ),
//                     Container(
//                       child: Text(
//                         "20 SAR",
//                         style: TextStyle(
//                             fontSize: 12, fontWeight: FontWeight.normal),
//                       ),
//                     )
//                   ],
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: [
//                     Container(
//                       width: size.width * .45,
//                       child: Text(
//                         "Reason",
//                         style: TextStyle(
//                             fontSize: 16, fontWeight: FontWeight.bold),
//                       ),
//                     ),
//                     Text(
//                       "Bad Attitute",
//                       style: TextStyle(
//                           fontSize: 12, fontWeight: FontWeight.normal),
//                     )
//                   ],
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   mainAxisSize: MainAxisSize.min,
//                   children: [
//                     Container(
//                       width: size.width * .45,
//                       child: Text(
//                         "Submitted By",
//                         style: TextStyle(
//                             fontSize: 16, fontWeight: FontWeight.bold),
//                       ),
//                     ),
//                     Text(
//                       "Khaled Ali",
//                       style: TextStyle(
//                           fontSize: 12, fontWeight: FontWeight.normal),
//                     )
//                   ],
//                 ),
//               ],
//             ),
//             PopupMenuButton(
//               itemBuilder: (context) {
//                 return [
//                   PopupMenuItem(
//                     value: 'edit',
//                     child: Text('Edit'),
//                   ),
//                   PopupMenuItem(
//                     value: 'delete',
//                     child: Text('Delete'),
//                   )
//                 ];
//               },
//               onSelected: (String value) {
//                 print('You Click on po up menu item $value');
//               },
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
