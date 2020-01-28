import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gattai/src/providers/User_provider.dart';
import 'package:gattai/src/screens/SignUpFlow/Pin2Screen.dart';
import 'package:pinput/pin_put/pin_put.dart';


class PinScreen extends StatelessWidget{

  User user;
  PinScreen({Key key, @required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(user.email);
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Center(child: Text("Set up a PIN")),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 30.0,
              ),
              Text('Enter PIN 1 ',
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
              child: Text('Your PIN 1 will be used to authenticate in different services. Please do not forget about it. ',
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
                  onSubmit: (String pin){
                    user.pin = pin;
                  },
                )),


              RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(18.0),
                ),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Pin2Screen(user:user)));
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



