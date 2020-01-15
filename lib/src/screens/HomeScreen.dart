import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  final emailField = TextEditingController();

  @override
  Widget build(BuildContext context) {

    void _showDialog() {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          // return object of type Dialog
          return AlertDialog(
            title: new Text("Gattai"),
            content: new Text("This functionality is currently under development"),
            actions: <Widget>[
              new FlatButton(
                child: new Text("Close"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }

    return Scaffold(
        resizeToAvoidBottomPadding: false,
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Center(child: Text("Let's get started!")),
        ),
        body: Container(
          padding: new EdgeInsets.all(12.0),
          child: Center(
            child: Column(
              children: <Widget>[
                SizedBox( height: 120.0 ),
                Container(
                    width: 160.0,
                    height: 160.0,
                    decoration: new BoxDecoration(
                        shape: BoxShape.circle,
                        image: new DecorationImage(
                            fit: BoxFit.fill,
                            image: new NetworkImage(
                                "https://i.imgur.com/BoN9kdC.png")
                        )
                    )),
                SizedBox( height: 24.0 ),
                Text(
                  'Carlos Isaias Ruiz',
                  style: TextStyle(fontSize: 28),
                ),
                SizedBox( height: 24.0 ),
                OutlineButton(
                  child: Text("View profile"),
                  onPressed: () { _showDialog(); },
                  shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(4.0)),
                ),
              ],
            ),
          )
        )
    );
  }
}

