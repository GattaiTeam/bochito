import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gattai/src/helpers/styles.dart';
import 'package:gattai/src/widgets/SignUp_EmailForm.dart';

class SignUpEmail extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        resizeToAvoidBottomPadding: true,
        backgroundColor: GattaiColors.gattaiBackground,
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.arrow_back_ios),
            color: Colors.white,
          ),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          title: Text('Step X of Y',
              style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 20.0,
                  color: Colors.white)),
          centerTitle: true,
        ),


      body: ListView(
          children: <Widget>[
            Stack(
                children: <Widget>[
                  Container(
                      height: MediaQuery.of(context).size.height - 82,
                      width: MediaQuery.of(context).size.width,
                      color: Colors.transparent),
                  Positioned(
                      top: MediaQuery.of(context).size.height / 3,
                      child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(45.0),
                                topRight: Radius.circular(45.0),
                              ),
                              color: Colors.white),
                          height: MediaQuery.of(context).size.height - 100.0,
                          width: MediaQuery.of(context).size.width)),
                  Positioned(
                    top: 30.0,
                    left: (MediaQuery.of(context).size.width / 2) - 100.0,
                    child: Hero(
                      tag: 'Gattai',
                      child: Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(AppImages.gattaiLogoWhite),
                                fit: BoxFit.cover)),
                        height: 160.0,
                        width: 200.0,),),),
                  Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height: MediaQuery.of(context).size.height/2,
                        ),
                        EmailForm(),
                      ],
                    ),
                  ),
                ]
            )
          ]
      )



    );
  }
}

