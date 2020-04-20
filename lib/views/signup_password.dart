import 'package:flutter/material.dart';
import 'login.dart';



class PasswordScreen extends StatefulWidget {
  @override
  _PasswordScreenState createState() => _PasswordScreenState();
}

class _PasswordScreenState extends State<PasswordScreen> {
  bool _showpassword = false;
  bool _visible = false;
  final _formKey = GlobalKey<FormState>();


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



  //////// Validation Form

  String _password(String value){
    if(value.isEmpty){
      return 'Password is require';
    }
    var result = value.length < 8
        ? "Password should have at least 8 characters"
        : null;
    return result;
  }


  //////// Password Fill

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
//
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


  //////// ComfirmPassword Fill

  Widget _bulidComfirmPassword(){
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
            // onTap: ,

            validator: _password,


            obscureText: ! _visible,
            keyboardType: TextInputType.visiblePassword,
            style: TextStyle(color: Colors.white),

            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14.0),
                prefixIcon: Icon(Icons.lock,color: Colors.white,),hoverColor: Colors.orangeAccent,
                hintText: "Enter your comfirm password",
                hintStyle:TextStyle(color: Colors.grey) ,
//
                suffixIcon: GestureDetector(

                  onTap: (){
                    setState(() {
                      _visible = !_visible;
                    });
                  },
                  child: Icon(
                      _visible ? Icons.visibility : Icons.visibility_off
                  ),
                )

            ),

          ),
        ),
      ],
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
          Navigator.push(context, MaterialPageRoute(builder: (context)=> NewLogin()));
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

                    SizedBox(height: 50,),
                    _bulidPassword(),
                    SizedBox(
                      height: 10.0,
                    ),
                    _bulidComfirmPassword(),
                    SizedBox(
                      height: 50.0,
                    ),
                    _buildLoginButton()














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
