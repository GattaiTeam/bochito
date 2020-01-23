import 'package:flutter/material.dart';

class AppTextStyles{
  static const TextStyle headerGreyStyle =
  TextStyle(fontSize: 40.0, color: Colors.grey, fontFamily: "Product Sans");

  static const TextStyle headerWhiteStyle =
  TextStyle(fontSize: 40.0, color: Colors.white, fontFamily: "Product Sans");

  static const TextStyle headerBoldStyle = TextStyle(
    fontSize: 50.0,
    color: Colors.black,
    fontFamily: "Product Sans",
    fontWeight: FontWeight.bold,
  );

  static const TextStyle descriptionGreyStyle = TextStyle(
    color: Colors.grey,
    fontSize: 20.0,
    fontFamily: "Product Sans",
  );

  static const TextStyle descriptionWhiteStyle = TextStyle(
    color: Colors.white,
    fontSize: 20.0,
    fontFamily: "Product Sans",
  );
}



class GattaiColors{
  static const gattaiBackground = const Color(0xff6055cd);
  static const buttonBackground_green = const Color(0xff8cc63e);
  static const buttonBackground_yellow = const Color(0xffe3c420);
}



class AppImages{
  static const String gattaiLogoWhite = 'assets/images/gattai_logo_white.png';
  static const String gattaiLogo = 'assets/images/gattai_logo.png';
}


// This will modify all the buttons / text size of the whole app unless specified with different quantities
// on the widget.
class GattaiTheme{
  static ThemeData gattaiTheme = ThemeData(
      primaryColor: GattaiColors.gattaiBackground,
      textTheme: TextTheme(
          button: TextStyle(
            fontSize: 20.0,
            color: Colors.white,

          )
      ),
      buttonTheme: ButtonThemeData(
        height: 50,
        minWidth: 200,
        textTheme: ButtonTextTheme.primary,
        buttonColor: Color(0xff695bcf),
        shape: RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(18.0),
          //side: BorderSide(color: Colors.indigo),
        ),
      )
  );
}



