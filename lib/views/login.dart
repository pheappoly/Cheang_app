
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'customer_list.dart';
import 'register_screen.dart';


class NewLogin extends StatefulWidget {
  @override
  _NewLoginState createState() => _NewLoginState();
}


class _NewLoginState extends State<NewLogin> {
  bool _rememberMe = false;
  bool _showpassword = false;
  final _formKey = GlobalKey<FormState>();
  //final GlobalKey<FormState> _formKey = GlobalKey<FormState>();


//////// BoxDecoration with KBoxDecorationStyle

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




  ///////// Validation Form

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

  String _password(String value){
    if(value.isEmpty){
      return 'Password is require';
    }
    var result = value.length < 8
        ? "Password should have at least 8 characters"
        : null;
    return result;
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




///////// Build widget Form



  //////// Email

 Widget _buildEmailLTF(){
  return  Column(
  crossAxisAlignment: CrossAxisAlignment.start,

  children: <Widget>[
    Text("Email",style:TextStyle(color: Colors.white,fontSize: 15),),
    SizedBox(height: 10,),
    Container(
    alignment: Alignment.centerLeft,
    decoration: kBoxDecorationStyle,

    height: 55.0,
      child: TextFormField(
        validator: _gmail,

        keyboardType: TextInputType.emailAddress,
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(


        border: InputBorder.none,
        contentPadding: EdgeInsets.only(top: 14.0),
        prefixIcon: Icon(Icons.email,color: Colors.white,),
        hintText: 'Enter your email',
        hintStyle: TextStyle(color: Colors.grey),



  ),
  ),
  ),
  ],
  );
}



Widget _bulidPassword(){
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
           obscureText: ! _showpassword,
           keyboardType: TextInputType.visiblePassword,
           style: TextStyle(color: Colors.white),
           decoration: InputDecoration(
             border: InputBorder.none,
             contentPadding: EdgeInsets.only(top: 14.0),
                  prefixIcon: Icon(Icons.lock,color: Colors.white,),hoverColor: Colors.orangeAccent,
            hintText: "Enter your password",
            hintStyle:TextStyle(color: Colors.grey) ,
               suffixIcon: GestureDetector(

                 onTap: (){
                 setState(() {
                   _showpassword = !_showpassword;
                 });
               },
                child: Icon(
                 _showpassword ? Icons.visibility : Icons.visibility_off
               ),
             )
           ),
         ),
       ),
     ],
   );
}



//////// Name

  Widget _bulidCampanyName(){
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: <Widget>[
        Text("Name",style:TextStyle(color: Colors.white,fontSize: 15),),
        SizedBox(height: 10,),
        Container(
          alignment: Alignment.centerLeft,
          decoration: kBoxDecorationStyle,

          height: 55.0,
          child: TextFormField(
            autofocus: false,
            validator: _name,

           // validator: validateName,
            //obscureText: true,
           // keyboardType: TextInputTyp,
            style: TextStyle(color: Colors.white),

            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(Icons.home,color: Colors.white,),

              hintText: 'Enter your company name',
              hintStyle: TextStyle(color: Colors.grey),


            ),
          ),
        ),
      ],
    );

  }



  //////// ForgotPassword

  Widget _buildForgotPassword(){
   return  Container(
     alignment: Alignment.centerRight,
     padding: EdgeInsets.only(right: 0.0),
     child: FlatButton(


       onPressed: (){},
       child: Text("Forgort Password",style: TextStyle(color: Colors.white,fontSize: 18.0),),
     ),
   );

  }


  //////// Remember box

  Widget _buildRemeberBox(){
   return  Container(
     child: Row(
       children: <Widget>[
         Theme(
           data: ThemeData(unselectedWidgetColor: Colors.white),
           child: Checkbox(
               value: _rememberMe,
               checkColor: Colors.green,
               activeColor: Colors.white,
               onChanged: (value){
                 setState((
                     ) {
                   _rememberMe = value;
                 });
               }),
         ),
         Text("Remember me",style: TextStyle(color: Colors.white,fontSize: 15),)
       ],
     ),
   );
  }


  //////// NoACC action

Widget _buildNoAcc(){
   return Container(
     padding:EdgeInsets.only(left: 10.0) ,
     child: Row(

       children: <Widget>[
         Text("Don't have account ?",style: TextStyle(color: Colors.white,fontSize: 18),),
         FlatButton(
           onPressed: (){Navigator.push(
               context,
               MaterialPageRoute(builder: (context) => Register()),
             );
           },
           child:Text("Sing Up",style: TextStyle(color: Colors.orangeAccent,fontWeight:FontWeight.bold,fontSize: 18),) ,

         )
       ],
     ),
   );
}


//////// Login Button

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
         Navigator.push(context, MaterialPageRoute(builder: (context)=> CustomerList()));
       },


       child: Text("LOGIN",style: TextStyle(color: Colors.black),),

     ),


   );
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key:_formKey,
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
                   Text(
                     "Sign In",
                     style: TextStyle(color: Colors.white,fontFamily: "OpenSans",fontSize: 38.0,fontWeight: FontWeight.bold),
                   ),
                   SizedBox(height: 30,),
                   _bulidCampanyName(),
                   SizedBox(
                     height: 10.0,
                   ),

                  _buildEmailLTF(),
                   SizedBox(height: 10,),
                   _bulidPassword(),
                   _buildForgotPassword(),
                   _buildRemeberBox(),
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

