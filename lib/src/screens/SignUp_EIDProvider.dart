import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

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
                duration: const Duration(milliseconds: 375),
                columnCount: columnCount,
                child: ScaleAnimation(
                  child: FadeInAnimation(
                    child: gridViewChildren(index),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }


  gridViewChildren(index){
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
                  print("test");
                },
              )
            ),
          ),
        ),
        ),
        Text(providerList[index],),

        Center(

        )
      ],
    );
  }
}