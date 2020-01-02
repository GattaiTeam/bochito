import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EmailForm extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return EmailFormState();
  }
}

class EmailFormState extends State<EmailForm>{
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          Container(
            width: 300.0,
            child: TextFormField(
              validator: (value){
                return validateEmail(value);
              },
            ),
          ),
          RaisedButton(
            onPressed: (){
              if (_formKey.currentState.validate()){
                print("Test");
                Scaffold
                    .of(context)
                    .showSnackBar(SnackBar(content: Text('Processing Data')));
              }else{
                print("Did not work");
              }
            },
            child: Text('Next'),
          )
        ],
      )
    );
  }
  
  validateEmail(email){

    if (email.isEmpty) {
      return "Please enter your email";
    }
    bool validEmail = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(email);
    if (validEmail){
      return null; // Returns that the form is valid, null is used so nothing is displayed on the tooltip
    }
    return "Please enter a valid email";
  }
      
  
  
}


