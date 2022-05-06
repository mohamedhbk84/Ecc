// import 'package:flutter/material.dart';

// class AttentenceEmployee extends StatefulWidget {
//   @override
//   _AttentenceEmployeeState createState() => _AttentenceEmployeeState();
// }

// class _AttentenceEmployeeState extends State<AttentenceEmployee> {
// ///////////////////////////

//   List<Map<String, dynamic>> catData = [
//     {'name': 'fruits'},
//     {'name': 'vegtabiles'},
//     {'name': 'portoala'},
//     {'name': 'banana'},
//     {'name': 'orange'},
//   ];

//   Widget iccon({IconData icons, Function ontap}) {
//     return IconButton(
//         icon: Icon(
//           icons,
//           color: Colors.grey,
//         ),
//         onPressed: ontap);
//   }

//   Widget setCard({String name}) {
//     return Container(
//       width: 100,
//       height: 25,
//       margin: EdgeInsets.all(2),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(10),
//         color: Colors.red.shade500,
//       ),
//       child: Center(
//         child: Text(
//           name,
//           style: TextStyle(fontSize: 16),
//         ),
//       ),
//     );
//   }

//   Widget productcard() {
//     return Container(
//       width: MediaQuery.of(context).size.width / 2 - 20,
//       height: 190,
//       margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
//       decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(10),
//           color: Colors.greenAccent.withOpacity(.5)),
//       child: Column(
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.end,
//             children: [
//               Container(
//                 width: 40,
//                 height: 40,
//                 decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(10),
//                     color: Colors.white.withOpacity(.4)),
//                 child: Center(
//                   child: IconButton(
//                       icon: Icon(
//                         Icons.favorite_border,
//                         color: Colors.grey,
//                       ),
//                       onPressed: () {}),
//                 ),
//               ),
//             ],
//           ),
//           SizedBox(
//             height: 60,
//             child: Container(
//               width: 60,
//               height: 40,
//               decoration: BoxDecoration(
//                   color: Colors.grey,
//                   borderRadius: BorderRadius.circular(50),
//                   image: DecorationImage(
//                       image: AssetImage('asset/back.jpg'), fit: BoxFit.cover)),
//             ),
//           ),
//           Row(
//             children: [
//               Text(
//                 "apple",
//               ),
//             ],
//           ),
//           Row(
//             children: [
//               Text(
//                 "40 {(p)} ",
//               ),
//             ],
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.end,
//             children: [
//               Container(
//                 width: 40,
//                 height: 32,
//                 decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(10),
//                     color: Colors.white.withOpacity(.4)),
//                 child: IconButton(
//                     icon: Icon(
//                       Icons.add,
//                       color: Colors.grey,
//                     ),
//                     onPressed: () {}),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }

// /////////////////////////
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Column(
//       children: [
//         ListView.builder(
//           scrollDirection: Axis.horizontal,
//           itemCount: 5,
//           itemBuilder: (ctx, index) {
//             return setCard(name: catData[index]['name']);
//           },
//         ),
//       ],
//     ));
//   }
// }
