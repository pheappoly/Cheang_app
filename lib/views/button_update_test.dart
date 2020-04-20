//import 'package:flutter/material.dart';
//
//class Test extends StatefulWidget {
//
//  @override
//  _TestState createState() => _TestState();
//}
//
//class _TestState extends State<Test> {
//  bool _active = false;
//  //bool isButtonActive = false;
//  void handleTap() {
//    setState(() {
//      /*
//      if(widget.buttonName == 'Mode'){
//      }
//      if(widget.buttonName =='Sounds'){
//      }
//      if(widget.buttonName =='Volume'){
//      }
//      isButtonActive = !isButtonActive;
//      */
//      _active = !_active;
//      widget.onPressed();
//    });
//    //print('widget.isActive:' + isButtonActive.toString());
//  }
//  @override
//  Widget build(BuildContext context) {
//    return Container();
//  }
//}
import 'package:flutter/material.dart';

class AppBarScreen extends StatefulWidget {
  @override
  _AppBarScreenState createState() => _AppBarScreenState();
}

class _AppBarScreenState extends State<AppBarScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
    );
  }
}
