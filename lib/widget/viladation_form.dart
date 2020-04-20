String validateName(String value){
  String pattern = r'(^[a-zA-Z ]*$)';
  RegExp regExp = new RegExp(pattern);
  if(value.isEmpty){
    return 'Full name is required';
  }else if(!regExp.hasMatch(value)){
    return 'Full name must be all a-z or A-Z';
  }
  return null;
}
String validateGmail(String value){
  String pattern = r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
  RegExp regExp = new RegExp(pattern);
  if(value.isEmpty){
    return 'Email is required';
  }else if(!regExp.hasMatch(value)){
    return 'Please check your email';
  }
  return null;
}
String validatePhone(String value){
  String pattern = r'^((?!([1-9]))[0-9]{9,10})$';
  RegExp regExp = new RegExp(pattern);
  if(value.isEmpty){
    return 'Phone number is required';
  }else if(!regExp.hasMatch(value)){
    return 'Your number must be 0-9';
  }
  return null;
}
String validatePassword(String value){
  var result = value.length < 6
      ? "Password should have at least 6 characters"
      : null;
  return result;
}