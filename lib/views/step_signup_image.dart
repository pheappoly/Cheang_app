

import 'dart:io';

import 'package:cheang_app/views/signup_password.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';



class SignUpImage extends StatefulWidget {
  @override
  _SignUpImageState createState() => _SignUpImageState();
}

class _SignUpImageState extends State<SignUpImage> {


  File _image;

  Future getImage(ImageSource source) async {

    var image = await ImagePicker.pickImage(source: source);
//    File croppldFile = await ImageCropper.cropImage(
//     sourcePath: image.path,
//      maxWidth: 512,
//      maxHeight: 512,




   // );
//    var result = await FlutterImageCompress.compressWithFile(
//        image.path,
//      rotate:180,
//      quality: 55
//
//    );


    setState(() {
      _image = image;

    });
  }




  //////// Build widget NextButton
  Widget _buildNextButton(){
    return  Container(


      padding: EdgeInsets.symmetric(vertical: 25.0),
      width: double.infinity,
      child: RaisedButton(


        padding: EdgeInsets.all(15.0),
        elevation: 5.0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
        color: Colors.white,
        onPressed:(){


            Navigator.push(context, MaterialPageRoute(builder: (context)=> PasswordScreen()));



        },




        child: Text("Next",style: TextStyle(color: Colors.black,fontSize: 20),),

      ),


    );
  }



  // ///////   Select or take image by show choice dialog


 // _openGallary( BuildContext context) async{
//    var picture = imageFile = await ImagePicker.pickImage(source: ImageSource.gallery);
//    this.setState(() {
//      imageFile = picture;
//    });
//    Navigator.of(context).pop();
//
//  }
//  _openCamera(BuildContext context)async{
//    var picture = imageFile = await ImagePicker.pickImage(source: ImageSource.camera);
//    this.setState(() {
//      imageFile = picture;
//    });
//    Navigator.of(context).pop();
////    var image = await ImagePicker.pickImage(source: ImageSource.camera);
//////
////    setState(() {
////      imageFile = image;
////    });
//
//
//  }
////  Future<void> _showChoiceDialog(BuildContext context){
//    return showDialog(context: context,builder: (BuildContext context){
//
//      return AlertDialog(
//        title: Text("Make a Choice"),
//        content: SingleChildScrollView(
//          child: ListBody(
//            children: <Widget>[
//             // Image.file(imageFile,width: 400,height: 400,),
//              GestureDetector(
//                child: Text("Gallary"),
//                onTap: (){
//                  _openGallary(_openGallary(context));
//                },
//              ),
//              Padding(
//                padding: EdgeInsets.all(10),
//              ),
//              GestureDetector(
//                child: Text("Camera"),
//                onTap: (){
//                  _openCamera(_openCamera(context));
//                },
//              )
//            ],
//          ),
//        ),
//      );
//    });
//  }

//  Widget _decideImage(){
//    if(imageFile == null){
//      return Text("No Image Selected");
//
//    }else{
//      Image.file(imageFile,width: 400,height: 400,);
//    }
//  }


    @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(child: Text("Company Photo")),
        elevation: 0,
      ),




      body: Column(
          children: <Widget>[
            Card(
              elevation: 3,
              child: Container(

                color: Colors.grey[200],
                height: 400,
                width: double.infinity,
                padding: EdgeInsets.all(8.0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(

                   child: _image == null
                        ? Text('No image selected.')
                        : Image.file(_image,width: 400,height: 400,),
                  ),
                ),
              ),
            ),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.only(left: 16.0,right: 16.0,bottom: 16.0),
              child: _buildNextButton(),
            ),
//
          ],
        ),

      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton.extended(

            backgroundColor: Colors.green,

              onPressed: ()=>getImage(ImageSource.camera),
            label: Text("Camera",style: TextStyle(color: Colors.white),),
            heroTag: UniqueKey(),
            icon: Icon(Icons.camera,color: Colors.white,),
          ),
          SizedBox(
            width: 20,
          ),
          FloatingActionButton.extended(
            backgroundColor: Colors.green,
            onPressed: ()=>getImage(ImageSource.gallery),
            label: Text("Gallary",style: TextStyle(color: Colors.white),),
            heroTag: UniqueKey(),
            icon: Icon(Icons.photo_library,color: Colors.white,),
          ),

          //_buildNextButton()
        ],
      ),

    );








/////////// Using Show Dialog Function



      // return Scaffold(
//      body: Center(
//
//
//      ),
//      floatingActionButton: Row(
//        mainAxisAlignment: MainAxisAlignment.end,
//        children: <Widget>[
//          FloatingActionButton.extended(
//              onPressed: (){
//
//              },
//            label: Text("Camera"),
//            heroTag: UniqueKey(),
//            icon: Icon(Icons.camera),
//          ),
//          SizedBox(
//            width: 20,
//          ),
//          FloatingActionButton.extended(
//            onPressed: (){}, label: Text("Gallary"),
//            heroTag: UniqueKey(),
//            icon: Icon(Icons.photo_library),
//          ),
//        ],
//      ),
//    );
//    return Scaffold(
//      body: Container(
//        height: double.infinity,
//        width: double.infinity,
//        decoration: BoxDecoration(
//          gradient: LinearGradient(
//              begin: Alignment.topCenter,
//              end: Alignment.bottomLeft,
//              colors:[
//                Color(0xFFB2DFDB),Color(0xFF80CBC4),
//                Color(0xFF4DB6AC),Color(0xFF26A69A),
//
//
//
//              ],
//              stops: [0.1,0.4,0.7,0.9],
//
//          ),
//
//
//        ),
//        child: Column(
//          mainAxisAlignment: MainAxisAlignment.center,
//          children: <Widget>[
//            Text("No Image"),
//            RaisedButton(
//              onPressed: (){},
//              child: Text("Select Image"),
//            )
//          ],
//        ),
//      ),
//    );
  }
}

