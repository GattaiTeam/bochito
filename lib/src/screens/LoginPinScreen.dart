import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pin_put/pin_put.dart';
import 'package:gattai/src/screens/HomeScreen.dart';


class LoginPinScreen extends StatelessWidget{
  final emailField = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Center(child: Text("Let's get started!")),
        ),
        body: Container(
          padding: new EdgeInsets.all(12.0),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 10.0,
              ),
              Text(
                'Enter your pin',
                style: TextStyle(fontSize: 24),
              ),
              SizedBox(
                height: 40.0,
              ),
              PinPut(
                fieldsCount: 4,
                isTextObscure: true,
                onSubmit: (pin) {
                  print("Entered pin: " + pin);
                  Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
                },
              )
            ],
          ),
        )
    );
  }
}

