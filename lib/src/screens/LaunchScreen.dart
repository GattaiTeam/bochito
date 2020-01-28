import 'package:flutter/material.dart';
import 'package:gattai/src/screens/LogInFlow/Login_Email.dart';
import 'package:gattai/src/screens/SignUpFlow/SignUp_Email_Screen.dart';
import 'package:liquid_swipe/Constants/Helpers.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:gattai/src/helpers/styles.dart';


class MyApp extends StatelessWidget {



  final pages = [
    Container(
      color: GattaiColors.gattaiBackground,
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
                  style: AppTextStyles.headerWhiteStyle,
                ),
                Text(
                  "to access the world!",
                  style: AppTextStyles.headerBoldStyle,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  "You are a few steps of becoming a\n"
                      "world citizen by joining Gattai!\n",
                  style: AppTextStyles.descriptionWhiteStyle,
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
                  style: AppTextStyles.headerGreyStyle,
                ),
                Text(
                  "to access the world!",
                  style: AppTextStyles.headerBoldStyle,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  "Temporibus autem aut\n"
                      "officiis debitis aut rerum\n"
                      "necessitatibus\n"
                      "testseteststsets",
                  style: AppTextStyles.descriptionGreyStyle,
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
                  style: AppTextStyles.headerWhiteStyle,
                ),
                Text(
                  "to access the World!",
                  style: AppTextStyles.headerBoldStyle,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                    "Use it as you prefer\n"
                        "wherever you are\n"
                        "whenever you want",
                  style: AppTextStyles.descriptionWhiteStyle,
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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gattai',
      theme: GattaiTheme.gattaiTheme,
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