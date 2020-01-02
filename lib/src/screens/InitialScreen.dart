import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:gattai/src/algorithms/delayed_animation_signUpLogIn_screen.dart'; /* Delayed animation for first screen (Log In and Sign up)*/
import 'package:gattai/src/widgets/GattaiLogo.dart';
import 'package:gattai/src/widgets/LogIn_Button.dart';
import 'package:gattai/src/widgets/SignUp_Button.dart';


class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  final int delayedAmount = 500;
  double _scale;
  AnimationController _controller;
  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: Duration(
        milliseconds: 200,
      ),
      lowerBound: 0.0,
      upperBound: 0.1,
    )..addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    const primaryColorBar = const Color(0xFF717DBC);

    final color = Colors.white;
    _scale = 1 - _controller.value;
    final gradientBackgroundStops = [0.1,0.4,0.6,0.9]; // Used to create the gradient background
    final gradientBackgroundColors = [Colors.indigo, Colors.indigoAccent, Colors.blue, Colors.lightBlue]; //


    return MaterialApp(
        title: 'Gattai',
        theme: ThemeData(
          primaryColor: primaryColorBar,
        ),
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      stops: gradientBackgroundStops,
                      colors: gradientBackgroundColors)

              ),

              child: Center(
                child: Column(

                  children: <Widget>[
                    SizedBox(
                      height: 30.0,
                    ),
                    AvatarGlow(
                        endRadius: 90,
                        duration: Duration(seconds: 2),
                        glowColor: Colors.white24,
                        repeat: true,
                        repeatPauseDuration: Duration(seconds: 2),
                        startDelay: Duration(seconds: 1),
                        child: GattaiLogo()
                    ),
                    DelayedAnimation(
                      child: Text(
                        "Welcome to",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 35.0,
                            color: color),
                      ),
                      delay: delayedAmount + 1000,
                    ),
                    DelayedAnimation(
                      child: Text(
                        "a borderless adventure!",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 35.0,
                            color: color),
                      ),
                      delay: delayedAmount + 2000,
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    DelayedAnimation(
                      child: Text(
                        "The only credential you need",
                        style: TextStyle(fontSize: 25.0, color: color),
                      ),
                      delay: delayedAmount + 3000,
                    ),
                    DelayedAnimation(
                      child: Text(
                        "to access the world",
                        style: TextStyle(fontSize: 25.0, color: color),
                      ),
                      delay: delayedAmount + 3000,
                    ),
                    SizedBox(
                      height: 70.0,
                    ),
                    DelayedAnimation(
                      child: GestureDetector(
                        onTapDown: _onTapDown,
                        onTapUp: _onTapUp,
                        child: Transform.scale(
                          scale: _scale,
                          child: LogInButton(),
                        ),
                      ),
                      delay: delayedAmount + 4000,
                    ),
                    SizedBox(height: 20.0,),
                    DelayedAnimation(
                      child: GestureDetector(
                        onTapDown: _onTapDown,
                        onTapUp: _onTapUp,
                        child: Transform.scale(
                          scale: _scale,
                          child: SignUpButton(),
                        ),
                      ),
                      delay: delayedAmount + 5000,
                    ),
                  ],
                ),
              )
          ),
        ));
  }


  void _onTapDown(TapDownDetails details) {
    _controller.forward();

  }

  void _onTapUp(TapUpDetails details) {
    _controller.reverse();
  }



}






