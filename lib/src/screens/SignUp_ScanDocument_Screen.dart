import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:gattai/src/screens/PinScreen.dart';
import 'package:imagebutton/imagebutton.dart';


class SignUpScanDocument extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Center(child: Text("Scan your documents")),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 30.0,
              ),
              Text('Select a document ',
                style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontFamily: 'Roboto mono sample',
                    fontStyle: FontStyle.italic,
                    fontSize: 35),
              )
              ,
              Text(' to scan',
                style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontStyle: FontStyle.italic,
                    fontFamily: 'Roboto mono sample',
                    fontSize: 35),
              ),
              SizedBox(
                height: 40,
              ),
              Expanded(
                child: ListView(
                  children: <Widget>[
                ImageButton(
                  children: <Widget>[],
                    width: 600,
                    height: 150,
                    pressedImage: Image.asset(
                      "assets/images/Passport.png",
                    ),
                    unpressedImage: Image.asset("assets/images/Passport.png"),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => PinScreen()));
                    },
                ),
                    ImageButton(
                      children: <Widget>[],
                      width: 600,
                      height: 150,
                      pressedImage: Image.asset(
                        "assets/images/IDCard.png",
                      ),
                      unpressedImage: Image.asset("assets/images/IDCard.png"),
                      onTap: () {
                        print('test');
                      },
                    ),

                    ImageButton(
                      children: <Widget>[],
                      width: 600,
                      height: 150,
                      pressedImage: Image.asset(
                        "assets/images/Mobile.png",
                      ),
                      unpressedImage: Image.asset("assets/images/Mobile.png"),
                      onTap: () {
                        print('test');
                      },
                    ),


                    ImageButton(
                      children: <Widget>[],
                      width: 600,
                      height: 150,
                      pressedImage: Image.asset(
                        "assets/images/Other.png",
                      ),
                      unpressedImage: Image.asset("assets/images/Other.png"),
                      onTap: () {
                        print('test');
                      },
                    ),





                  ],
                  addAutomaticKeepAlives: false,

                ),
              )
            ],
          ),
        )
    );
  }
}



