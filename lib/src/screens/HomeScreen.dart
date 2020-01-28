import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:gattai/src/screens/LaunchScreen.dart';

class HomeScreen extends StatelessWidget{
  final emailField = TextEditingController();

  @override
  Widget build(BuildContext context) {

    void _showDialog() {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          // return object of type Dialog
          return AlertDialog(
            title: new Text("Gattai"),
            content: new Text("This functionality is currently under development"),
            actions: <Widget>[
              new FlatButton(
                child: new Text("Close"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }

    return Scaffold(
        resizeToAvoidBottomPadding: false,
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Center(child: Text("Let's get started!")),
        ),
        body: Container(
          padding: new EdgeInsets.all(12.0),
          child: Center(
            child: Column(
              children: <Widget>[
                SizedBox( height: 12.0 ),
                Container(
                    width: 160.0,
                    height: 160.0,
                    decoration: new BoxDecoration(
                        shape: BoxShape.circle,
                        image: new DecorationImage(
                            fit: BoxFit.fill,
                            image: new NetworkImage(
                                "https://i.imgur.com/kT7b3JV.jpg")
                        )
                    )),
                SizedBox( height: 24.0 ),

              Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  SizedBox(width: 20.0, height: 100.0),
                  Text(
                    "Be",
                    style: TextStyle(fontSize: 43.0),
                  ),
                  SizedBox(width: 20.0, height: 100.0),
                  RotateAnimatedTextKit(
                      duration: Duration(milliseconds: 5000),
                      totalRepeatCount: 10,

                      onTap: () {
                        print("Tap Event");
                      },
                      text: ["Gattai", "Awesome!", "DIFFERENT"],
                      textStyle: TextStyle(fontSize: 40.0, fontFamily: "Horizon"),
                      textAlign: TextAlign.start,
                      alignment: AlignmentDirectional.topStart // or Alignment.topLeft
                  ),
                ],
              ),



                OutlineButton(
                  child: Text("View profile"),
                  onPressed: () { _showDialog(); },
                  shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(4.0)),
                ),

                SizedBox(height: 20),

                RaisedButton(
                  child: Text("Sign Out"),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp()));
                    },
                  shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(4.0)),
                ),
              ],
            ),
          )
        )
    );
  }
}

