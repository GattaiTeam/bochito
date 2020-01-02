import 'package:flutter/material.dart';


class SignUpButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 270,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100.0),
        color: Colors.white,
      ),
      child: Center(
        child: FlatButton(
          child: Text(
              'Sign Up',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Color(0xFF8185E2),
              )
          ),
          onPressed: () {
            print("Pressed Sign Up");
          }
          ,
        ),
      ),
    );
  }
}
