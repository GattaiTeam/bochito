import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gattai/src/helpers/FirebaseAuth.dart';
import 'package:gattai/src/providers/User_provider.dart';
import 'package:gattai/src/screens/HomeScreen.dart';
import 'package:pinput/pin_put/pin_put.dart';


class Pin2Screen extends StatelessWidget{

  User user;
  Pin2Screen({Key key, @required this.user}) : super(key: key);


  submit(context){
    String email = user.email;
    String password = user.pin + 'abcd';

    try{
      UserRepository user = UserRepository.instance();
      user.registerWithEmailAndPassword(email, password);
      Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
    }catch(e){
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    print (user.pin);
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
                shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(18.0),
                ),
                onPressed: (){
                  submit(context);
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



