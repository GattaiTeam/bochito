import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gattai/src/widgets/LogIn_Button.dart';
import 'package:pinput/pin_put/pin_put.dart';


class Pin2Screen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Center(child: Text("Set up your PIN 2")),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 30.0,
              ),
              Text('Enter PIN 2 ',
                style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontFamily: 'Roboto mono sample',
                    fontStyle: FontStyle.italic,
                    fontSize: 35),
              ),

              SizedBox(
                height: 5.0,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text('Your PIN2 will be used to validate major changes on your profile and keep confirmations. This will only be shown once, please write it down, tattoo it on your soul.',
                  style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontFamily: 'Roboto mono sample',
                      fontStyle: FontStyle.italic,
                      fontSize: 20),
                ),
              )

              ,
              Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: PinPut(
                    fieldsCount: 4,
                    isTextObscure: true,
                  )),
              RaisedButton(
                color: Color(0xFF717DBC),
                textTheme: ButtonTextTheme.primary,
                shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(18.0),
                  side: BorderSide(color: Colors.indigo),

                ),
                onPressed: (){

                },
                child: Text('Next',
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white
                  ),),
              ),


            ],
          ),
        )
    );
  }
}



