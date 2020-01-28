
import 'dart:io';
import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gattai/src/helpers/styles.dart';
import 'package:gattai/src/providers/User_provider.dart';
import 'package:gattai/src/screens/SignUpFlow/PinScreen.dart';
import 'package:gattai/src/widgets/SignUp_CountrySelector.dart';
import 'package:image_picker/image_picker.dart';
import 'package:imagebutton/imagebutton.dart';
import 'package:progress_dialog/progress_dialog.dart';
import 'package:rflutter_alert/rflutter_alert.dart';


class SignUpTakePicture extends StatefulWidget{
  User user;
  SignUpTakePicture({Key key, @required this.user}) : super(key: key);
  _SignUpTakePictureState createState() => _SignUpTakePictureState(user: user);
}

class _SignUpTakePictureState extends State<SignUpTakePicture>{

  File frontSideImage; // Used to keep track of the images that will be taken by the user
  File backSideImage;

  User user;
  _SignUpTakePictureState({Key key, @required this.user});

  _selectPictureMethod(BuildContext context, type){
    return Alert(
      context: context,
      type: AlertType.none,
      title: "Please select a method",
      desc: "",
      buttons: [
        DialogButton(
          child: Text(
            "Import",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          onPressed:  () async => _openGallery(context, type),
          color: GattaiColors.buttonBackground_green,
        ),
        DialogButton(
          child: Text(
            "Take picture",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          onPressed: () async => _openCamera(context, type),
          color: GattaiColors.gattaiBackground,

        )
      ],
    ).show();
  }

  Future _openGallery(BuildContext context, String type) async { //Async used to wait for the action to complete
     var picture = await ImagePicker.pickImage(source: ImageSource.gallery);
     this.setState((){
        if (type == 'frontSideID'){
          frontSideImage = picture;
        }else{
          backSideImage = picture;
        }
     });
     Navigator.of(context).pop();
  }

  Future _openCamera(context, String type) async{
    var picture = await ImagePicker.pickImage(source: ImageSource.camera);
    this.setState((){
      if (type == 'frontSideID'){
        frontSideImage = picture;
      }else{
        backSideImage = picture;
      }
    });
    Navigator.of(context).pop();
  }



  Widget _obtainImageView(File img, String type){
    if(img == null){
      return ImageButton(
        children: <Widget>[],
        width:MediaQuery.of(context).size.width / 1.37,
        height:MediaQuery.of(context).size.height/3.5,
        pressedImage: Image.asset("assets/images/$type.png"),
        unpressedImage: Image.asset("assets/images/$type.png"),
        onTap: (){
          _selectPictureMethod(context,type);
        },
      );


    }else{
      return Image.file(
          img,
          width:MediaQuery.of(context).size.width / 1.37,
          height:MediaQuery.of(context).size.height/3.5);
    }

  }


  _showProgressDialog(BuildContext context){
    ProgressDialog pr = new ProgressDialog(context,type: ProgressDialogType.Normal);
    double percentage = 0.0;
    pr.style(message: 'Showing some progress...');

    pr.style(
      message: 'Please wait...',
      borderRadius: 8.0,
      backgroundColor: Colors.white,
      progressWidget: CircularProgressIndicator(),
      elevation: 30.0,
      insetAnimCurve: Curves.bounceIn,
      progressTextStyle: TextStyle(
          color: Colors.black, fontSize: 12.0, fontWeight: FontWeight.w400),
      messageTextStyle: AppTextStyles.progressStyle

    );


    pr.show();


    Future.delayed(Duration(seconds: 2)).then((onvalue) {
      percentage = percentage + 30.0;
      print(percentage);

      pr.update(
        progress: percentage,
        message: "Please wait...",
        progressWidget: Container(
            padding: EdgeInsets.all(8.0), child: CircularProgressIndicator()),
        maxProgress: 100.0,

      );

      Future.delayed(Duration(seconds: 3)).then((value) {
        percentage = percentage + 15.0;
        pr.update(
            progress: percentage, message: "Our dog is sniffing your documents ...");
        Future.delayed(Duration(seconds: 3)).then((value) {
          percentage = percentage + 15.0;
          pr.update(progress: percentage, message: "A band of bears just invaded us, hold on");
          Future.delayed(Duration(seconds: 3)).then((value) {
            pr.hide();
            percentage = 0.0;
            Navigator.push(context, MaterialPageRoute(builder: (context) => PinScreen(user: user)));
          });
        });
      });
    });
  }


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
                        height: MediaQuery.of(context).size.height - 82.0,
                        width: MediaQuery.of(context).size.width,
                        color: Colors.transparent),
                    Positioned(
                        top: 20.0,
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
                      top: 35.0,
                      left: MediaQuery.of(context).size.width/6 ,

                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('Scan your document',
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 30.0,
                                  fontWeight: FontWeight.bold)),

                        ],
                      ),
                    ),

                    Positioned(
                      top: MediaQuery.of(context).size.height/8,
                      left: MediaQuery.of(context).size.width/8,
                      child: _obtainImageView(frontSideImage, 'frontSideID')
                    ),





                    Positioned(
                        top: MediaQuery.of(context).size.height/2.3,
                        left: MediaQuery.of(context).size.width/8,
                        child: _obtainImageView(backSideImage, 'backSideID')
                    ),


                    Positioned(
                      top: MediaQuery.of(context).size.height/1.35,
                      left: (MediaQuery.of(context).size.width / 1.3),
                      child: FloatingActionButton(
                          splashColor: Colors.indigoAccent,

                          backgroundColor: GattaiColors.gattaiBackground,
                          onPressed: (){
                            _showProgressDialog(context);
                          },
                          child: Icon(Icons.arrow_forward)
                      ),
                    )




                  ]),
            ])
    );
  }




}

class CountrySelectionWidget extends StatefulWidget {
  @override
  CountrySelector createState() => CountrySelector();
}

