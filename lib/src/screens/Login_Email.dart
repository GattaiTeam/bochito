import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gattai/src/screens/Login_Pin.dart';
import 'package:gattai/src/helpers/validator.dart';

class LoginEmail extends StatelessWidget{
  final _formKey = GlobalKey<FormState>();
  final emailField = TextEditingController();

  @override
  Widget build(BuildContext context) {

    submit () {
      if(_formKey.currentState.validate())
        Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPinScreen()));
    }

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
                key: _formKey,
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
                      validator: (value){
                        return validator(value, 'email');
                      },
                      autofocus: true,
                      onEditingComplete: () { submit(); },
                    ),
                    SizedBox(
                      height: 25.0,
                    ),

                    RaisedButton(
                      onPressed: () { submit(); },
                      child: Text('Continue'),
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

