//String name(String value){
//  String pattern = r'(^[a-zA-Z ]*$)';
//  RegExp regExp = new RegExp(pattern);
//  if(value.isEmpty){
//    return 'Full name is required';
//  }else if(!regExp.hasMatch(value)){
//    return 'Full name must be all a-z or A-Z';
//  }
//  return null;
//}
//String email(String value){
//  String pattern = r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
//  RegExp regExp = new RegExp(pattern);
//  if(value.isEmpty){
//    return 'Email is required';
//  }else if(!regExp.hasMatch(value)){
//    return 'Please check your email';
//  }
//  return null;
//}
//String phoneNumber(String value){
//  String pattern = r'^((?!([1-9]))[0-9]{9,10})$';
//  RegExp regExp = new RegExp(pattern);
//  if(value.isEmpty){
//    return 'Phone number is required';
//  }else if(!regExp.hasMatch(value)){
//    return 'Your number must be 0-9';
//  }
//  return null;
//}
//String password(String value){
//  var result = value.length < 6
//      ? "Password should have at least 6 characters"
//      : null;
//  return result;
//}
//class AppScopedModel extends Model{
//
//
//  static AppScopedModel of(BuildContext context, {bool rebuildOnChange: false}) =>
//      ScopedModel.of<AppScopedModel>(context, rebuildOnChange: rebuildOnChange);
//
//  Color backgroundColorGrey = Colors.grey[100];
//  String login = 'Sign Up';
//  String hour = '1h ago';
//  String profileImage ='lib/assets/images/girl2';
//  String firstname = 'meymey';
//  String lastname = 'sea';
//
//
////  Future<bool>createNewLeaveRequest(leaveRecordEntityleaveRecord)async{
////    _fireStore.collection("LeaveReguest").doucument(userEntity.email)
//
////  }
//
//
//
//
//
//
//  Map<String,String>selectedJson = en_json;
////
//  changeLanguage(String langCode){
//    if(langCode=="kh"){
//      Map<String, String> kh_json;
//      selectedJson=kh_json;
//    }else{
//      selectedJson=en_json;
//    }
//    notifyListeners();
//  }
//  String getLocalizedString(String keyName){
//    return selectedJson[keyName];
//  }
//
//
//
//}
//final en_json={
//  "peoplereport":"PEOPLE REPORT",
//  "register":"Register",
//  "login":"Login",
//  "makereport":"Make Report",
//  "setting":"Setting",
//  "language":"Language",
////  "photo":"Photo",
////  "post":"Post",
////  "notification":"Notification",
////  "me":"Me",
////  "":"",
//
//
//};
//final kh_jaon={
//  "title":"jom norang jerng",
//  "register":"jos chmose",
//  "login":"jol brer bras",
//  "setting":"",
//  "language":"Peasa",
////  "photo":"rub pheap",
////  "post":"",
////  "notification":"",
////  "me":"",
////  "":"",
//
//};
