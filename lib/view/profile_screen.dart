import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 500,
          width: 500,
          color: Colors.grey,
          child: Stack(
            alignment: Alignment.topRight,
            // clipBehavior: Clip.none,
            children: [
              CircleAvatar(),
              CircleAvatar(backgroundColor: Colors.red,radius: 100,),
              CircleAvatar(),
                Positioned(
                bottom: 50,
                right: 100,
                child: CircleAvatar(
                  radius: 100,
                  backgroundColor: Colors.green,
                ),
              ),
              Positioned(
                top: 100,
                left: 20,
                child: CircleAvatar(
                  radius: 150,
                  backgroundColor: Colors.blue,
                ),
              ),
              Positioned(
                right: 100,
                top: 200,
                child: CircleAvatar(
                  radius: 80,
                  backgroundColor: Colors.red,
                ),
              ),
            
              Positioned(
                top: 80,
                left: 50,
                child: Container(
                  height: 50,
                  width: 400,
                  decoration: BoxDecoration(
                      color: Colors.purple,
                      borderRadius: BorderRadius.circular(30)),
                ),
              ),

               Positioned(
                top: 50,
                left: 80,
                 child: Container(
                  height: 50,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(30)),
                               ),
               ),


               Positioned(
                bottom: 0,
                right: -500,
                 child: CircleAvatar(
                  backgroundColor: Colors.cyan,
                  radius: 300,
                 ),
               )
            ],
          ),
        ),
      ),
    );
  }
}
