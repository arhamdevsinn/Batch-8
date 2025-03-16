

import 'package:flutter/material.dart';


class vSize extends StatelessWidget {
  var height;

  vSize(this.height);

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: height,);
  }
}


class hSize extends StatelessWidget {
  final width;
  hSize(this.width);

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: width,);
  }
}