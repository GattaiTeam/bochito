import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

// Make sure when you use this widget to put it under a Stack Widget

class GattaiBackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Center(
      child: new Image.asset(
        'assets/images/GattaiBackground_withLogo.png',
        width: size.width,
        height: size.height,
        fit: BoxFit.fill,),
    );
  }
}