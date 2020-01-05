import 'package:flutter/material.dart';
import 'package:flutter_country_picker/flutter_country_picker.dart';

class CountrySelector extends State<StatefulWidget>{

  Country _selected;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: CountryPicker(
          dense: false,
          showFlag: true,  //displays flag, true by default
          showDialingCode: false, //displays dialing code, false by default
          showName: true, //displays country name, true by default
          showCurrency: false, //eg. 'British pound'
          showCurrencyISO: false, //eg. 'GBP'
          nameTextStyle: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w300,
            fontStyle: FontStyle.normal

          ),
          onChanged: (Country country) {
            setState(() {
              _selected = country;
            });
          },
          selectedCountry: _selected,
        ),
      ),
    );
  }


}

