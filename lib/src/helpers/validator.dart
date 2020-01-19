Map regex = {
  'email': RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+"),
};

String validator(String value, String type) {
  if (value.isEmpty) return "Required field";

  return !regex[type].hasMatch(value) ? "Please enter a valid " + type : null;
}


