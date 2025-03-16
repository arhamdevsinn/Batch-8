
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ResponsiveDesignScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var s = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: s.width <= 430 ? Colors.black : Colors.white,
      body: SingleChildScrollView(

        child: Row(children: [

          Container(width: s.width * 0.70 ,
          height: s.height * 0.50 ,color: s.width <= 700 ? Colors.blue : Colors.red,),
            Container(width: s.width * 0.30,
          height: 600,color: Colors.yellow,)

        ],),
        // child: Row(children: [
        //   Expanded(
        //     flex: 5,
        //     child: Container(
        //     height: 600,color: Colors.yellow,),
        //   ),
        //   Expanded(
        //     flex: 1,
        //     child: Container(
        //     height: 600,color: Colors.red,),
        //   )
        // ],)
      ),
    );
  }
}