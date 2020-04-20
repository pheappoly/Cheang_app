
import 'package:cheang_app/views/step_signup_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


import 'login.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {


  final _formKey = GlobalKey<FormState>();


  //////// BoxDecoration with KBoxDecorationStyle

  final kBoxDecorationStyle = BoxDecoration(

    color: Colors.white54,
    borderRadius: BorderRadius.circular(15.0),

    boxShadow: [BoxShadow(
      color: Colors.black12,
      blurRadius: 6.0,
      offset: Offset(0, 2),
    ),
    ],
  );



  //////// Validation Form

  String _name(String value){
    String pattern = r'(^[a-zA-Z ]*$)';
    RegExp regExp = new RegExp(pattern);
    if(value.isEmpty){
      return 'Name is required';
    }else if(!regExp.hasMatch(value)){
      return 'Full name must be all a-z or A-Z';
    }
    return null;
  }

  String _location(String value){

    if(value.isEmpty){
      return 'Location is required';
    }
    return null;
  }

  String _phone(String value){

    if(value.isEmpty){
      return 'phone is required';
    }
    return null;
  }

  String _gmail(String value){
    String pattern = r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regExp = new RegExp(pattern);
    if(value.isEmpty){
      return 'Email is required';
    }else if(!regExp.hasMatch(value)){
      return 'Please check your email';
    }
    return null;
  }




  //////// Build Form Fill Widget

  Widget _buildEmailLTF(){
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: <Widget>[
        Text("Email",style:TextStyle(color: Colors.white,fontSize: 15),),
        SizedBox(height: 10,),
        Container(
          alignment: Alignment.centerLeft,
          decoration: kBoxDecorationStyle,

          height: 50.0,
          child: TextFormField(
            validator: _gmail,
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(Icons.email,color: Colors.white,size: 20,),
              hintText: 'Enter your email',
              hintStyle: TextStyle(color: Colors.grey,fontSize: 15),


            ),
          ),
        ),
      ],
    );
  }



  Widget _bulidCampanyName(){
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: <Widget>[
        Text("Name",style:TextStyle(color: Colors.white,fontSize: 15),),
        SizedBox(height: 10,),
        Container(
          alignment: Alignment.centerLeft,
          decoration: kBoxDecorationStyle,

          height: 50.0,
          child: TextFormField(
            validator: _name,
            //obscureText: true,
            // keyboardType: TextInputTyp,
            style: TextStyle(color: Colors.white),

            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(Icons.home,color: Colors.white,size: 20,),
              hintText: 'Enter your company name',
              hintStyle: TextStyle(color: Colors.grey,fontSize: 15),


            ),
          ),
        ),
      ],
    );

  }




  Widget _bulidLocation(){
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: <Widget>[
        Text("Location",style:TextStyle(color: Colors.white,fontSize: 15),),
        SizedBox(height: 10,),
        Container(
          alignment: Alignment.centerLeft,
          decoration: kBoxDecorationStyle,

          height: 50.0,
          child: TextFormField(
            validator: _location,
            //obscureText: true,
            // keyboardType: TextInputTyp,
            style: TextStyle(color: Colors.white),

            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(Icons.location_on,color: Colors.red,size: 20,),
              hintText: 'Enter your company location',
              hintStyle: TextStyle(color: Colors.grey,fontSize: 15),


            ),
          ),
        ),
      ],
    );

  }



  Widget _bulidPhoneNumber(){
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: <Widget>[
        Text("Phone",style:TextStyle(color: Colors.white,fontSize: 15),),
        SizedBox(height: 10,),
        Container(
          alignment: Alignment.centerLeft,
          decoration: kBoxDecorationStyle,

          height: 50.0,
          child: TextFormField(
            keyboardType: TextInputType.phone,
            validator: _phone,
            //obscureText: true,
            // keyboardType: TextInputTyp,
            style: TextStyle(color: Colors.white),


            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(Icons.phone,color: Colors.green,size: 20,),
              hintText: 'Enter your phone number',
              hintStyle: TextStyle(color: Colors.grey,fontSize: 15),


            ),
          ),
        ),
      ],
    );

  }




  Widget _buildNoAcc(){
    return Container(
      padding:EdgeInsets.only(left: 10.0) ,
      child: Row(

        children: <Widget>[
          Text("Already have account ?",style: TextStyle(color: Colors.white,fontSize: 18),),
          FlatButton(
            child:Text("SingIn",style: TextStyle(color: Colors.orangeAccent,fontWeight:FontWeight.bold,fontSize: 18),) ,
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NewLogin()),
              );
            })
        ],
      ),
    );
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
          Navigator.push(context, MaterialPageRoute(builder: (context)=> SignUpImage()));
          },

        child: Text("Next",style: TextStyle(color: Colors.black,fontSize: 20),),

      ),

    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        autovalidate: true,
        child: Stack(
          children: <Widget>[

            Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomLeft,
                    colors:[
                      Color(0xFFB2DFDB),Color(0xFF80CBC4),
                      Color(0xFF4DB6AC),Color(0xFF26A69A),

                    ],
                    stops: [0.1,0.4,0.7,0.9]
                ),
              ),
            ),
            Container(
              height: double.infinity ,
              child: SingleChildScrollView(
                physics: ScrollPhysics(),
                padding: EdgeInsets.symmetric(
                    horizontal: 25.0,
                    vertical: 120.0
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top:0.0),
                      child: Text(
                        "Sign Up",
                        style: TextStyle(color: Colors.white,fontFamily: "OpenSans",fontSize: 38.0,fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(height: 30,),
                    _bulidCampanyName(),
                    SizedBox(
                      height: 10.0,
                    ),

                    _buildEmailLTF(),
                    SizedBox(height: 10,),
                    _bulidLocation(),
                   SizedBox(height: 10,),
                    _bulidPhoneNumber(),
                    _buildLoginButton(),
                    _buildNoAcc(),


                  ],
                ),
              ),
            ),


          ],
        ),
      ),

    );
  }
}

