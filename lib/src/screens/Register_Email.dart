import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gattai/src/widgets/GattaiLogo.dart';
import 'package:gattai/src/widgets/Register_Email_Form.dart';

class SignUpEmail extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Second Route"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            EmailForm(),
          ],
        ),
      )
    );
  }
}

