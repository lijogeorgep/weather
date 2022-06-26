// import 'package:flutter/material.dart';

// Widget forcast(context) {
//   return Padding(
//     padding: const EdgeInsets.all(8.0),
//     child: Container(
//       decoration: BoxDecoration(
//           color: Colors.purpleAccent.shade100,
//           borderRadius: BorderRadius.all(Radius.circular(15))),
//       child: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Column(
//           children: [
//             Center(
//                 child: Padding(
//               padding: EdgeInsets.all(8.0),
//               child: Column(
//                 children: [
//                   Text(
//                     'Cochin',
//                     style: TextStyle(color: Colors.white, fontSize: 20),
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text('Kerala,', style: TextStyle(color: Colors.white)),
//                       Text('India', style: TextStyle(color: Colors.white))
//                     ],
//                   ),
//                 ],
//               ),
//             )),
//             Padding(
//               padding:
//                   const EdgeInsets.symmetric(horizontal: 20, vertical: 8.0),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Container(
//                         height: MediaQuery.of(context).size.height * 0.05,
//                         child: Image.asset(
//                           'assets/icons/icon.png',
//                           fit: BoxFit.cover,
//                         ),
//                       ),
//                       SizedBox(
//                         height: 10,
//                       ),
//                       Text(
//                         'Sunny Day',
//                         style: TextStyle(color: Colors.white),
//                       )
//                     ],
//                   ),
//                   Text(
//                     '29' + '°C',
//                     style: TextStyle(color: Colors.white, fontSize: 30),
//                   ),
//                   Column(
//                     children: [
//                       Row(
//                         children: [
//                           Padding(
//                             padding: const EdgeInsets.all(8.0),
//                             child: Container(
//                               height: MediaQuery.of(context).size.height * 0.02,
//                               child: Image.asset(
//                                 'assets/icons/wind.png',
//                                 fit: BoxFit.cover,
//                                 color: Colors.white,
//                               ),
//                             ),
//                           ),
//                           Text('5', style: TextStyle(color: Colors.white)),
//                           Text('Kph', style: TextStyle(color: Colors.white))
//                         ],
//                       ),
//                       Row(
//                         children: [
//                           Padding(
//                             padding: const EdgeInsets.all(8.0),
//                             child: Container(
//                               height: MediaQuery.of(context).size.height * 0.02,
//                               child: Image.asset(
//                                 'assets/icons/humidity.png',
//                                 fit: BoxFit.cover,
//                                 color: Colors.white,
//                               ),
//                             ),
//                           ),
//                           Text('25', style: TextStyle(color: Colors.white)),
//                           Text('Kph', style: TextStyle(color: Colors.white))
//                         ],
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//             Row(
//               children: [],
//             ),
//           ],
//         ),
//       ),
//     ),
//   );
// }
