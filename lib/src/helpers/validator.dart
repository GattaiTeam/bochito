import 'package:gattai/src/providers/User_provider.dart';

Map regex = {
  'email': RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+"),
};

String validator(String value, String type) {
  if (value.isEmpty) return "Required field";
  return !regex[type].hasMatch(value) ? "Please enter a valid " + type : null;
}

String validator_signup(String value, String type, User user){
  if (value.isEmpty) return "Required field";
  user.email = value;
  return !regex[type].hasMatch(value) ? "Please enter a valid " + type : null;
}


