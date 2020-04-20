import 'package:flutter/material.dart';

class FormScreen extends StatefulWidget {
  @override
  _FormScreenState createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
//  String _text (String text){
//    return ;
//  }
  final kBoxDecorationStyle = BoxDecoration(
    color: Colors.white54,
    borderRadius: BorderRadius.circular(10.0),
    boxShadow: [BoxShadow(
      color: Colors.black12,
      blurRadius: 6.0,
      offset: Offset(0, 2),
    ),
    ],
  );
  String _name(String value){
    String pattern = r'(^[a-zA-Z ]*$)';
    RegExp regExp = new RegExp(pattern);
    if(value.isEmpty){
      return 'Full name is required';
    }else if(!regExp.hasMatch(value)){
      return 'Full name must be all a-z or A-Z';
    }
    return null;
  }
  String _email;
  String _password(String value){
    var result = value.length < 6
        ? "Password should have at least 6 characters"
        : null;
    return result;
  }



  String _phoneNumber;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget _buildName(){
    return TextFormField(

      validator: _name,
decoration: InputDecoration(labelText: "name"),
//      decoration: InputDecoration(labelText: "Name"),
//      validator: (String value){
//        if(value.isEmpty){
//          return 'Name is requir';
//        }
//      },
//      onSaved: (String value){
//        _name = value;
//      },
    );

  }
  Widget _buildEmail(){
    return TextFormField(
      decoration: InputDecoration(labelText: "Email"),
      validator: (String value){
        if(value.isEmpty){
          return 'Name is requir';
        }
        if(!RegExp(r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$').hasMatch(value)){
          return "plese enter your email again";

        }
        return null;
      },
      onSaved: (String value){
        _email = value;
      },
    );

  }
 Widget _buildPhoneNumber(){
   return TextFormField(
     keyboardType: TextInputType.numberWithOptions(),
     decoration: InputDecoration(labelText: "Name"),
     validator: (String value){
       if(value.isEmpty){
         return 'Name is requir';
       }
     },
     onSaved: (String value){
       _phoneNumber = value;
     },
   );

  }
 Widget _buildPassword(){
//    return TextFormField(
//      validator: _password,
//      decoration: InputDecoration(labelText: "enter your password"),
//    );


   return  Column(
     crossAxisAlignment: CrossAxisAlignment.start,

     children: <Widget>[
       Text("Password",style:TextStyle(color: Colors.white,fontSize: 15),),
       SizedBox(height: 10,),
       Container(
         alignment: Alignment.centerLeft,
         decoration: kBoxDecorationStyle,

         height: 55.0,
         child: TextFormField(
           validator: _password,

           obscureText: true,
           keyboardType: TextInputType.visiblePassword,
           style: TextStyle(color: Colors.white),

           decoration: InputDecoration(
             border: InputBorder.none,
             contentPadding: EdgeInsets.only(top: 14.0),
             prefixIcon: Icon(Icons.lock,color: Colors.white,),
             hintText: 'Enter your password',
             hintStyle: TextStyle(color: Colors.grey),


           ),
         ),
       ),
     ],
   );
 }
//
//  }
  Widget _buildComfirmPassword(){

  }


  Widget _buildLoginButton(){
    return  Container(
      padding: EdgeInsets.symmetric(vertical: 25.0),
      width: double.infinity,
      child: RaisedButton(
        padding: EdgeInsets.all(15.0),
        elevation: 5.0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
        color: Colors.white,
        onPressed:(){
          if(!_formKey.currentState.validate()){
            return;
          }
          _formKey.currentState.save();
          // Navigator.push(context, MaterialPageRoute(builder: (context)=> Login()));
        },


        child: Text("LOGIN",style: TextStyle(color: Colors.black),),

      ),


    );
  }
//
//  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Validation"),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            child: Form(
              key: _formKey,
                child: Column(
              children: <Widget>[
                  _buildName(),
                  _buildEmail(),
                  _buildPhoneNumber(),
                _buildPassword(),
//            _buildComfirmPassword(),
                  SizedBox(height: 20,),
                _buildLoginButton(),
//              RaisedButton(
//                onPressed: (){
//                if(!_formKey.currentState.validate()){
//                  return;
//                }
//                _formKey.currentState.save();
////                print(_name);
////                print(_email);
//                },
//                child: Text("Sumbit",style: TextStyle(color: Colors.blue),),
//            ),
              ],
            )),
          ),
        ],
      ),
//      body: Stack(
//        children: <Widget>[
//
//
//
//          Form(
//            key: _formKey,
//
//
//            child: Container(
//              height: double.infinity,
//              width: double.infinity,
//              decoration: BoxDecoration(
//                gradient: LinearGradient(
//                    begin: Alignment.topCenter,
//                    end: Alignment.bottomLeft,
//                    colors:[
//                      Color(0xFFB2DFDB),Color(0xFF80CBC4),
//                      Color(0xFF4DB6AC),Color(0xFF26A69A),
//
//
//
//                    ],
//                    stops: [0.1,0.4,0.7,0.9]
//                ),
//              ),
//            ),
//          ),
//          Container(
//            height: double.infinity ,
//            child: SingleChildScrollView(
//              physics: ScrollPhysics(),
//              padding: EdgeInsets.symmetric(
//                  horizontal: 25.0,
//                  vertical: 120.0
//              ),
//              child: Column(
//                crossAxisAlignment: CrossAxisAlignment.center,
//                children: <Widget>[
//                  Text(
//                    "Sign In",
//                    style: TextStyle(color: Colors.white,fontFamily: "OpenSans",fontSize: 38.0,fontWeight: FontWeight.bold),
//                  ),
//                  SizedBox(height: 30,),
//              _buildPassword(),
//
//                  SizedBox(
//                    height: 10.0,
//                  ),
//              _buildEmail(),
// SizedBox(
//                    height: 10.0,
//                  ),
//
//                  _buildLoginButton(),
//                  //_buildNoAcc(),
//
//
//
//
//
//
//
//
//
//
//                ],
//              ),
//            ),
//          ),
//
//
//        ],
//      ),

    );
  }
}
