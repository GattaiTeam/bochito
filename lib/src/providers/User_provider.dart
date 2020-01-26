import 'package:flutter/material.dart';

class User{

  String _email = '';
  String _pin = '';

  get email{
    return _email;
  }

  set email(String email){
    this._email = email;
  }

  get pin{
    return _pin;
  }

  set pin(String pin){
    this._pin = pin;
  }
}