


import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {

  var color, fontSize, weight;
  CustomText( { this.color = Colors.green,  this.fontSize = 50});

  @override
  Widget build(BuildContext context) {
    return Text( "Hi, Its Custom Widget", style: TextStyle(color: color, fontWeight: FontWeight.bold, wordSpacing: 10, letterSpacing: 5, fontSize: fontSize ),);
  }
}