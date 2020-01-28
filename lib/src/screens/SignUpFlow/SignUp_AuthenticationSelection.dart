import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gattai/src/screens/SignUpFlow/SignUp_ScanDocument_Screen.dart';
import 'package:imagebutton/imagebutton.dart';
import 'package:gattai/src/providers/User_provider.dart';


class SignUpAuthenticationSelection extends StatelessWidget{
  @override
  User user;
  SignUpAuthenticationSelection({Key key, @required this.user}) : super(key: key);

  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Center(child: Text("")),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Text('Select your method of',
                style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontFamily: 'Roboto mono sample',
                    fontStyle: FontStyle.italic,
                    fontSize: 35),
              )
              ,
              Text('authentication',
                style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontStyle: FontStyle.italic,
                    fontFamily: 'Roboto mono sample',
                    fontSize: 35),
              ),

              SizedBox(height: 40.0,),

              ImageButton(
                children: <Widget>[],
                width: 200,
                height: 200,
                pressedImage: Image.asset(
                  "assets/images/ScanDocument.png",
                ),
                unpressedImage: Image.asset("assets/images/ScanDocument.png"),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpScanDocument(user: user)));
                },
              ),

              SizedBox(height: 40.0,),

              ImageButton(
                children: <Widget>[],
                width: 200,
                height: 200,
                pressedImage: Image.asset(
                  "assets/images/EIDProvider.png",
                ),
                unpressedImage: Image.asset("assets/images/EIDProvider.png"),
                onTap: () {
                  proceedToScan(context);
                },
              ),

            ],
          ),
        )
    );
  }
}

proceedToScan(BuildContext context) {

  // set up the button
  Widget okButton = FlatButton(
    child: Text("Continue"),
    onPressed: () {
      Navigator.pop(context);
    },
  );


  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Signing up with your E-Provider is currently under development"),
    content: Text("Press Continue and select Scan Documents please"),
    actions: [
      okButton
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}



