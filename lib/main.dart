
import 'package:demo/view/todo_task_screen.dart';
import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}







// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(
//         fontFamily: "Baloo"
//       ),

//       home: Scaffold(
//         body: Row(
//           children: [
//             Text(
//               "G",
//               style: TextStyle(
//                   fontSize: 250,
//                   color: Colors.blue,
//                   fontFamily: "Baloo2",
//                   fontWeight: FontWeight.bold,
//                   ),
//             ),
//              Text(
//               "o",
//               style: TextStyle(
//                   fontSize: 250,
//                   color: Colors.red,
//                   fontWeight: FontWeight.bold),
//             ),
//              Text(
//               "o",
//               style: TextStyle(
//                   fontSize: 250,
//                   color: Colors.amber,
//                   fontWeight: FontWeight.bold),
//             ),
//              Text(
//               "g",
//               style: TextStyle(
//                   fontSize: 250,
//                   color: Colors.blue,
//                   fontWeight: FontWeight.bold),
//             ),
//              Text(
//               "l",
//               style: TextStyle(
//                   fontSize: 250,
//                   color: Colors.green,
//                   fontWeight: FontWeight.bold),
//             ),
//              Text(
//               "e",
//               style: TextStyle(
//                   fontSize: 250,
//                   fontFamily: "Baloo2",
//                   color: Colors.red,
//                   fontWeight: FontWeight.bold),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Baloo"
      ),
      home: TodoTaskScreen(),
 );
  }
}



//  Column(
//           children: [
//             Container(
//               width: 650,
//               decoration: BoxDecoration(
//                   color: const Color.fromARGB(255, 67, 67, 67),
//                   borderRadius: BorderRadius.circular(10),
//                   boxShadow: [
//                     BoxShadow(
//                         spreadRadius: 5,
//                         blurRadius: 10,
//                         color: Colors.grey.shade700)
//                   ]),
//               child: Row(
//                 children: [
//                   Icon(
//                     Icons.grid_on,
//                     size: 70,
//                     color: Colors.grey,
//                   ),
//                   Icon(
//                     Icons.pause,
//                     size: 70,
//                     color: Colors.blue,
//                   ),
//                   Icon(
//                     Icons.u_turn_right_rounded,
//                     size: 70,
//                     color: Colors.grey,
//                   ),
//                   Icon(
//                     Icons.download_rounded,
//                     size: 70,
//                     color: Colors.grey,
//                   ),
//                   Icon(
//                     Icons.upload,
//                     size: 70,
//                     color: Colors.grey,
//                   ),
//                   Icon(
//                     Icons.flash_on_rounded,
//                     size: 70,
//                     color: Colors.orange,
//                   ),
//                   Icon(
//                     Icons.replay_outlined,
//                     size: 70,
//                     color: Colors.green,
//                   ),
//                   Icon(
//                     Icons.stop_outlined,
//                     size: 70,
//                     color: Colors.red,
//                   ),
//                   Icon(
//                     Icons.manage_search_sharp,
//                     size: 70,
//                     color: Colors.blue,
//                   ),
//                 ],
//               ),
//             ),
//             Container(
//            decoration: BoxDecoration(
//                   color: const Color.fromARGB(255, 67, 67, 67),
//                   borderRadius: BorderRadius.circular(10),
//                   boxShadow: [
//                     BoxShadow(
//                         spreadRadius: 5,
//                         blurRadius: 10,
//                         color: Colors.grey.shade700)
//                   ]),
//               child: Column(
//                 children: [
//                   Icon(
//                     Icons.file_copy_outlined,
//                     size: 70,
//                     color: Colors.grey,
//                   ),
//                   Icon(
//                     Icons.search,
//                     size: 70,
//                     color: Colors.grey,
//                   ),
//                   Icon(
//                     Icons.connected_tv_sharp,
//                     size: 70,
//                     color: Colors.grey,
//                   ),
//                   Icon(
//                     Icons.play_arrow,
//                     size: 70,
//                     color: Colors.grey,
//                   ),
//                   Icon(
//                     Icons.grid_on_rounded,
//                     size: 70,
//                     color: Colors.grey,
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),

//  body: Row(
//           children: [
//             Container(
//               height: 200,
//               width: 200,
//               color: Colors.blue,
//             ),

//             SizedBox(
//               width: 40,
//             ),

//             Container(height: 100,
//             width: 100,color: Colors.pink,
//             ),
//                             SizedBox(
//               width: 10,
//             ),

//             Text("Arham Sarwar", style: TextStyle(fontSize: 40,color: Colors.cyan, fontWeight: FontWeight.bold ),),

//             Container(
//               height: 200,
//               width: 200,
//               color: Colors.amber,
//             ),

//             Icon(
//               Icons.search,
//               size: 100,
//               color: Colors.cyan,
//             ),

//             // Image.asset("arham/car.jpg", height: 200,)
//           ],
//     ),

// alt + z

// child
// chidren
// no child , no chilren
