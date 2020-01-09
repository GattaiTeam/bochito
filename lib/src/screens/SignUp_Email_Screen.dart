import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gattai/src/widgets/SignUp_EmailForm.dart';

class SignUpEmail extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Center(child: Text("Let's get started!")),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 10.0,
            ),
            Image.asset('assets/images/email_image.png',
              height: 150,),
            SizedBox(
              height: 20.0,
            ),
            EmailForm(),
          ],
        ),
      )
    );
  }
}

