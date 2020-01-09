import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:gattai/src/screens/SignUp_ScanDocument_Screen.dart';

class SignUpEIDProvider extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    int columnCount = 3;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Center(child: Text("Select your E-ID provider")),
      ),
      body: AnimationLimiter(
            child: GridView.count(
              crossAxisCount: columnCount,
              children: List.generate(
                3, (int index) {
                return AnimationConfiguration.staggeredGrid(
                  position: index,
                  duration: const Duration(milliseconds: 200),
                  columnCount: columnCount,
                  child: ScaleAnimation(
                    child: FadeInAnimation(
                      child: gridViewChildren(index,context),
                    ),
                  ),
                );
              },
              ),
            ),
          ),
    );


  }


  gridViewChildren(index,context){
    String imageRoute = 'assets/images/estonian_eproviders/estonian_$index.png';
    List<String>providerList = ['Smart-ID', 'LHV', "TransferWise"];
    print(imageRoute);
    return Column(
      children: <Widget>[
        Container(child: Expanded(
          child: Container(
            child: ConstrainedBox(
              constraints: BoxConstraints.expand(),
              child: IconButton(
                icon: Image.asset(imageRoute),
                iconSize: 50,
                onPressed: () {
                  obtainEProviderInformation(context);
                },
              )
            ),
          ),
        ),
        ),
        Text(providerList[index],
        style: TextStyle(
          fontSize: 20,
          fontFamily: 'RobotoMono'

        ),),

        Center(

        )
      ],
    );
  }


  // Method that pops an alert dialog once an E-Provider is clicked
  // The alert dialog will display that the E-Provider feature is still in development.
  proceedToScan(BuildContext context) {

    // set up the button
    Widget okButton = FlatButton(
      child: Text("Continue"),
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpScanDocument()));
      },
    );

    Widget cancelButton = FlatButton(
      child: Text("Cancel"),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("This feature is still being developed"),
      content: Text("Press Continue to proceed with the sign up process"),
      actions: [
        cancelButton,
        okButton
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  obtainEProviderInformation(BuildContext context){
    Widget newEProvider = TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          fillColor: Colors.white,
          hintText: 'Gattai',
          labelText: 'Who is your E-Provider?',
          prefixIcon: Icon(Icons.favorite),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25.0),
              borderSide: BorderSide()
          ),
          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0)),
    );

    Widget okButton = FlatButton(
      child: Text("Continue"),
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpScanDocument()));
      },
    );

    Widget cancelButton = FlatButton(
      child: Text("Cancel"),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("Please tell us who is your E-Provider, so we may include it the next time"
          "you log in Gattai"),
      content: newEProvider,
      actions: [
        cancelButton,
        okButton
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}