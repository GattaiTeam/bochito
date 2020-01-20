import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gattai/src/screens/SignUpFlow/SignUp_EIDProvider.dart';
import 'package:gattai/src/widgets/SignUp_CountrySelector.dart';

class SignUpCountry extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Center(child: Text("Select your country")),
        ),
        body: Center(
          child:ListView(
            children: <Widget>[
              Column(
                children: <Widget>[
                  SizedBox(
                    height: 30.0,
                  ),
                  Text('What is your residence',
                    style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontFamily: 'Roboto mono sample',
                        fontStyle: FontStyle.italic,
                        fontSize: 35),
                  )
                  ,
                  Text('country?',
                    style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontStyle: FontStyle.italic,
                        fontFamily: 'Roboto mono sample',
                        fontSize: 35),
                  ),


                  SizedBox(
                    height: 20.0,
                  ),


                  Image.asset('assets/images/country_pet.png',
                  height: 200,),

                  SizedBox(
                    height: 30.0,
                  ),


                  CountrySelectionWidget(),

                  SizedBox(
                    height: 70.0,
                  ),
                  Container(
                    height: 50.0,
                    width: 200.0,

                    child:  RaisedButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpEIDProvider()));

                      },
                      child: Text('Next',
                        style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white
                        ),),
                    ),
                  )
                ],
              ),
            ],
          )
        )
    );
  }


}

class CountrySelectionWidget extends StatefulWidget {
  @override
  CountrySelector createState() => CountrySelector();
}

