import 'package:flutter/material.dart';

class ClaassScreen extends StatelessWidget {
  const ClaassScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // bobdy: ,
        body: Center(
            child: Row(
      children: [
       const CircleAvatar(
          backgroundColor: Colors.red,
          radius: 100,
          backgroundImage: AssetImage("arham/car.jpg"),
        ),
       Container(
        
        height:100,width:100,decoration: BoxDecoration(borderRadius: BorderRadius.only(topRight: Radius.circular(45),),color: (Colors.red),border: Border.all(color:Colors.amber,width: 10)),
        
        child: Image.asset("arham/car.jpg"),),
        const Spacer(),
        const CircleAvatar(
          backgroundColor: Colors.red,
          radius: 100,
          backgroundImage: AssetImage("arham/car.jpg"),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: CircleAvatar(
                            backgroundColor: Colors.blue,
                            radius: 20,
                            backgroundImage: AssetImage("arham/car.jpg")),
                      ),
                      CircleAvatar(
                          backgroundColor: Colors.orange,
                          radius: 20,
                          backgroundImage: AssetImage("arham/car.jpg"))
                    ],
                  ),
                  CircleAvatar(
                      backgroundColor: Colors.orange,
                      radius: 20,
                      backgroundImage: AssetImage("arham/car.jpg")),
                ],
              ),
            ],
          ),
        ),
        CircleAvatar(
            backgroundColor: Colors.red,
            radius: 100,
            backgroundImage: AssetImage("arham/car.jpg")),
      ],
    )));
  }
}
