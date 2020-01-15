import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gattai/src/screens/LoginPinScreen.dart';

class LoginScreen extends StatelessWidget{
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
                'Login',
                style: TextStyle(fontSize: 24),
              ),
              SizedBox(
                height: 40.0,
              ),
              Form(
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      controller: emailField,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Email',
                        labelText: 'Email',
                      ),
                      autofocus: true,
                      onEditingComplete: () {
                        print(emailField.text);
                        Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPinScreen()));
                      },
                    ),
                  ],
                ),
              )
            ],
          ),
        )
    );
  }
}

