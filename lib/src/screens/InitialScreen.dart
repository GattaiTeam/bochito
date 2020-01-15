import 'package:flutter/material.dart';
import 'package:gattai/src/screens/RegisterScreen.dart';
import 'package:gattai/src/screens/LoginScreen.dart';


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


    return MaterialApp(
        title: 'Gattai',
        theme: ThemeData(
          primaryColor: primaryColorBar,
        ),
        debugShowCheckedModeBanner: false,
        home: HomeScreen());
  }

  void _onTapDown(TapDownDetails details) {
    _controller.forward();

  }

  void _onTapUp(TapUpDetails details) {
    _controller.reverse();
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
            color: Colors.white,
          ),

          child: Center(
            child: ListView(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    SizedBox(height: 200.0),
                    SizedBox(
                      height: 155.0,
                      child: Image.asset(
                        "assets/images/gattai_logo.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                    SizedBox(height: 400.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            OutlineButton(
                              child: Text("Login"),
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
                              },
                              shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(4.0)),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          // mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            FlatButton(
                                color: Colors.black,
                                textColor: Colors.white,
                                child: Text("Register"),
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterScreen()));
                                },
                                shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(4.0))
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                  ],
                )

              ],
            ),
          )
      ),
    );
  }
}






