import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:gattai/src/algorithms/delayed_animation_signUpLogIn_screen.dart'; /* Delayed animation for first screen (Log In and Sign up)*/




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
    final color = Colors.white;
    _scale = 1 - _controller.value;
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          //backgroundColor: Color(0xff5b39c6),
          //Container that adds the gradient color to the background of the app
          body: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      stops: [0.1,0.4,0.6,0.9],
                      colors: [Colors.indigo, Colors.indigoAccent, Colors.blue, Colors.lightBlue])
                //colors: [Colors.purple, Colors.indigoAccent, Colors.deepPurpleAccent, Colors.purple])
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
                        child: Image.asset('assets/images/gattai_logo_white.png')
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
                          child: _logInButton,
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
                          child: _signUpButton,
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





  Widget get _logInButton => Container(
    height: 60,
    width: 270,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(100.0),
      color: Colors.white,
    ),
    child: Center(
      child: Text(
        'Log In',
        style: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
          color: Color(0xFF8185E2),
        ),
      ),
    ),
  );

  Widget get _signUpButton => Container(
    height: 60,
    width: 270,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(100.0),
      color: Colors.white,
    ),
    child: Center(
      child: Text(
        'Sign Up',
        style: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
          color: Color(0xFF8185E2),
        ),
      ),
    ),
  );

  void _onTapDown(TapDownDetails details) {
    _controller.forward();
  }

  void _onTapUp(TapUpDetails details) {
    _controller.reverse();
  }
}
