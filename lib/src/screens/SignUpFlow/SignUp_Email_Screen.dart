import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gattai/src/widgets/SignUp_EmailForm.dart';

class SignUpEmail extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomPadding: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Center(child: Text("")),
      ),

      body: Stack(
        children: <Widget>[

          Center(
            child: new Image.asset(
                'assets/images/GattaiBackground_withLogo.png',
                width: size.width,
                height: size.height,
                fit: BoxFit.fill,),
          ),
          Center(

            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: size.height/3,
                  ),
                  EmailForm(),
                ],
              ),
            )

          )
        ],
      )
    );
  }
}

