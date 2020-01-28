import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gattai/src/providers/User_provider.dart';
import 'package:gattai/src/screens/SignUpFlow/SignUp_CountrySelection_Screen.dart';
import 'package:gattai/src/helpers/validator.dart';

class EmailForm extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return EmailFormState();
  }
}

class EmailFormState extends State<EmailForm>{
  User user = new User();

  final _formKey = GlobalKey<FormState>();



  @override
  Widget build(BuildContext context) {

    submit(){
      if (_formKey.currentState.validate()){
        Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpCountry(user:user)));
      }
    }



    Size size = MediaQuery.of(context).size;
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          Container(
            width: size.width * 0.8,
            child: TextFormField(
              autofocus: false,
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
                return validator_signup(value, 'email', user);
              }

              ,
            onEditingComplete: () { submit(); },),
          ),
          SizedBox(
            height: 15.0,
          ),
          Container(
            height: 70.0,
            width: size.width * 0.8,
            child: Align(
                alignment: Alignment.bottomRight,
                child: FloatingActionButton(
                    splashColor: Colors.indigoAccent,

                    backgroundColor: Color(0xff6055cd),
                    onPressed: (){
                      submit();
                    },
                    child: Icon(Icons.arrow_forward)
                )
              )
            ),


        ],
      )
    );
  }
}


