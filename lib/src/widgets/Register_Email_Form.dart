import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gattai/src/screens/Register_CountrySelection.dart';

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
            width: 320.0,
            child: TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                fillColor: Colors.white,
                hintText: 'example@gatt.ai',
                labelText: 'Please enter your email address',
                prefixIcon: Icon(Icons.email),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25.0),
                  borderSide: BorderSide()
                ),
                contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0)),
              validator: (value){
                return validateEmail(value);
              }
              ,
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          Container(
            height: 50.0,
            width: 200.0,

            child:           RaisedButton(
              color: Color(0xFF717DBC),
              textTheme: ButtonTextTheme.primary,
              shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(18.0),
                side: BorderSide(color: Colors.indigo),

              ),
              onPressed: (){
                if (_formKey.currentState.validate()){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpCountry()));
                }

              },
              child: Text('Next',
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.white
              ),),
            ),
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


