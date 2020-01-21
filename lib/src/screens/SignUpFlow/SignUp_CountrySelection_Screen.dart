import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gattai/src/helpers/styles.dart';
import 'package:gattai/src/screens/SignUpFlow/SignUp_AuthenticationSelection.dart';
import 'package:gattai/src/widgets/SignUp_CountrySelector.dart';

class SignUpCountry extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        resizeToAvoidBottomPadding: true,
        backgroundColor: GattaiColors.gattaiBackground,
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.arrow_back_ios),
            color: Colors.white,
          ),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          title: Text('Step X of Y',
              style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 20.0,
                  color: Colors.white)),
          centerTitle: true,
        ),

        body: ListView(
            children: <Widget>[
              Stack(
                  children: <Widget>[
                    Container(
                        height: MediaQuery.of(context).size.height - 82.0,
                        width: MediaQuery.of(context).size.width,
                        color: Colors.transparent),
                    Positioned(
                        top: 75.0,
                        child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(45.0),
                                  topRight: Radius.circular(45.0),
                                ),
                                color: Colors.white),
                            height: MediaQuery.of(context).size.height - 100.0,
                            width: MediaQuery.of(context).size.width)),
                    Positioned(
                      top: 30.0,
                      left: (MediaQuery.of(context).size.width / 2) - 100.0,
                      child: Hero(
                        tag: 'Gattai',
                        child: Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/images/country_pet.png'),
                                  fit: BoxFit.cover)),
                          height: 160.0,
                          width: 200.0,),),),
                    Positioned(
                      top: 200.0,
                      left: MediaQuery.of(context).size.width/6 ,

                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('Select your country',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold)),

                        ],
                      ),
                    ),
                    Positioned(
                      top: 230.0,
                      left: MediaQuery.of(context).size.width/3.5,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('of residence',
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 30.0,
                                  fontWeight: FontWeight.bold)),

                        ],
                      ),
                    ),

                    Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(
                            height: MediaQuery.of(context).size.height/2,
                          ),
                          CountrySelectionWidget(),
                        ],
                      ),
                    ),

                    Positioned(
                      top: MediaQuery.of(context).size.height/1.5,
                      left: (MediaQuery.of(context).size.width / 1.3),
                      child: FloatingActionButton(
                          splashColor: Colors.indigoAccent,

                          backgroundColor: GattaiColors.gattaiBackground,
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpAuthenticationSelection()));
                          },
                          child: Icon(Icons.arrow_forward)
                      ),
                    )




                  ]),
            ])
    );
  }


}

class CountrySelectionWidget extends StatefulWidget {
  @override
  CountrySelector createState() => CountrySelector();
}

