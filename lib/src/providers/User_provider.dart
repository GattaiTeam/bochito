import 'package:flutter/material.dart';

class User with ChangeNotifier{

  String _email = '';

  get email{
    return _email;
  }

  set email(String email){
    this._email = email;
    notifyListeners();
  }
}