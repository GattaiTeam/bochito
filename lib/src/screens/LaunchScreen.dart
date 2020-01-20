import 'package:flutter/material.dart';
import 'package:gattai/src/screens/LogInFlow/Login_Email.dart';
import 'package:gattai/src/screens/SignUpFlow/SignUp_Email_Screen.dart';
import 'package:gattai/src/widgets/LogIn_Button.dart';
import 'package:gattai/src/widgets/SignUp_Button.dart';
import 'package:liquid_swipe/Constants/Helpers.dart';
import 'package:liquid_swipe/liquid_swipe.dart';


class MyApp extends StatelessWidget {

  static const TextStyle greyStyle =
  TextStyle(fontSize: 40.0, color: Colors.grey, fontFamily: "Product Sans");
  static const TextStyle whiteStyle =
  TextStyle(fontSize: 40.0, color: Colors.white, fontFamily: "Product Sans");

  static const TextStyle boldStyle = TextStyle(
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

  final pages = [
    Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 120.0),
            child: Image.asset('assets/images/gattai_logo.png'),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Your only credential",
                  style: greyStyle,
                ),
                Text(
                  "to access the world!",
                  style: boldStyle,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  "Temporibus autem aut\n"
                      "officiis debitis aut rerum\n"
                      "necessitatibus\n"
                      "testseteststsets",
                  style: descriptionGreyStyle,
                ),
                SizedBox(
                  height: 40.0,
                ),

                Row(
                  children: <Widget>[
                    Container(
                      height: 50,
                      width: 150,
                      child: LogInButtonLaunch()
                    ),

                    SizedBox(
                      width: 20.0,
                    ),
                    Container(
                      height: 50,
                      width: 150,
                      child: SignUpButtonLaunch()
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    ),
    Container(
      color: Colors.lightBlue,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 70.0),
            child: Image.asset('assets/images/gattai_logo_white.png'),
          ),



          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Your only credential",
                  style: whiteStyle,
                ),
                Text(
                  "to access the world!",
                  style: boldStyle,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  "Excepteur sint occaecat cupidatat\n"
                      "non proident, sunt in\n"
                      "culpa qui officia",
                  style: descriptionWhiteStyle,
                ),
                SizedBox(
                  height: 20.0,
                ),

                Row(
                  children: <Widget>[
                    Container(
                      height: 50,
                      width: 150,
                      child: LogInButtonLaunch()
                    ),

                    SizedBox(
                      width: 20.0,
                    ),
                    Container(
                      height: 50,
                      width: 150,
                      child: SignUpButtonLaunch()
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    ),
    Container(
      color: Colors.orange,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
              ],
            ),
          ),
          Image.asset("assets/images/World.png"),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Your only credential",
                  style: whiteStyle,
                ),
                Text(
                  "to access the World!",
                  style: boldStyle,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                    "Use it as you prefer\n"
                        "wherever you are\n"
                        "whenever you want",
                  style: descriptionWhiteStyle,
                ),

                SizedBox(
                  height: 20.0,
                ),

                Row(
                  children: <Widget>[
                    Container(
                      height: 50,
                      width: 150,
                      child: LogInButtonLaunch()
                    ),

                    SizedBox(
                      width: 20.0,
                    ),
                    Container(
                      height: 50,
                      width: 150,
                      child: SignUpButtonLaunch()
                    ),
                  ],
                )


              ],
            ),
          )
        ],
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    const primaryColorBar = const Color(0xff6055cd);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gattai',
      theme: ThemeData(
          primaryColor: primaryColorBar,
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
      ),


      home: Scaffold(
        body: LiquidSwipe(
          pages: pages,
          enableLoop: true,
          fullTransitionValue: 300,
          enableSlideIcon: true,
          waveType: WaveType.liquidReveal,
          positionSlideIcon: 0.5,
        ),
      ),
    );
  }
}


class SignUpButtonLaunch extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new RaisedButton(
      color: Colors.green,
      onPressed: () {
        return Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpEmail()));
      },
      child: Text('Sign Up'),
    );
  }
}


class LogInButtonLaunch extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new RaisedButton(
      color: Colors.white,
      onPressed: () {
        return Navigator.push(context, MaterialPageRoute(builder: (context) => LoginEmail()));
      },
      child: Text('Log In'),
    );
  }
}