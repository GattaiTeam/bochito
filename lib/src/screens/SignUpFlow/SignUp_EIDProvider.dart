import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:gattai/src/screens/SignUpFlow/SignUp_ScanDocument_Screen.dart';

class SignUpEIDProvider extends StatelessWidget{
  int _numberOfProviders = 4;
  @override
  Widget build(BuildContext context) {
    int columnCount = 2;
    // numberOfproviders will be updated depending on the country, for now its hard-coded
    // but this is business logic, probably a request to a JSON with the number of providers
    // depending on the country

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Center(child: Text("Select your E-ID provider")),
      ),
      body: AnimationLimiter(
            child: GridView.count(
              crossAxisCount: columnCount,
              children: List.generate(
                _numberOfProviders+1, (int index) {
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
    if (index == _numberOfProviders){ // Non-Existent provider the user can show
      return Column(
        children: <Widget>[
          Container(child: Expanded(
            child: Container(
              child: ConstrainedBox(
                  constraints: BoxConstraints.expand(),
                  child: IconButton(
                    icon: Image.asset('assets/images/AddProvider.png'),
                    iconSize: 50,
                    onPressed: () {
                      obtainEProviderInformation(context);
                    },
                  )
              ),
            ),
          ),
          ),
        ],
      );

    }

    else{
      String imageRoute = 'assets/images/estonian_eproviders/estonian_$index.png';
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
                      proceedToScan(context);
                    },
                  )
              ),
            ),
          ),
          ),
        ],
      );
    }




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
      title: Text("Signing up with your E-Provider is currently under development"),
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
          validator: (value){
            if (value.isEmpty){
              return "You must type your E-ID Provider";
            }else{
              return null;
            }
          },
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
          " you log in with Gattai"),
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