
import 'package:flutter/material.dart';


class CustomButton extends StatelessWidget {
  final text, onTap, filled;
  CustomButton({required this.text, required this.onTap, this.filled = true});


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 50,
        width: size.width,
        child: Center(child: Text(text, style: TextStyle(color: !filled ? Colors.green: Colors.white,fontSize: 20, fontWeight: FontWeight.bold),)),
        decoration: BoxDecoration(
          border: Border.all(color: !filled ? Colors.green: Colors.transparent),
        color: filled ? Colors.green : Colors.transparent,
          borderRadius: BorderRadius.circular(50)
        ),
      ),
    );
  }
}