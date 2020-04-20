import 'package:flutter/material.dart';

class ButtonStatus extends StatefulWidget {
  @override
  _ButtonStatusState createState() => _ButtonStatusState();
}

class _ButtonStatusState extends State<ButtonStatus> {
//  bool button1 = true;
//  bool button2 = false;
//  void _button1() {
//    setState(() {
//      button1 = false;
//      button2 = true;
//    });
//  }
//  void _button2() {
//    setState(() {
//      button1 = true;
//      button2 = false;
//    });
//  }

  bool buttonState = true;
  bool button1 = false;

  void _buttonChange() {
    setState(() {
      buttonState = !buttonState;

    });
  }

  //bool enable = true;


  //bool toggleValue = false;

  @override
  Widget build(BuildContext context) {
//    return Scaffold(
//      body: Center(
//        child: AnimatedContainer(
//            duration: Duration(
//              milliseconds: 1000,
//            ),
//            height: 40,
//          width: 100,
//          decoration: BoxDecoration(
//            borderRadius: BorderRadius.circular(20.0),
//            color: toggleValue?Colors.orangeAccent:Colors.green.withOpacity(0.5)
//
//          ),
//          child: Stack(
//            children: <Widget>[
//              AnimatedPositioned(
//                duration: Duration(milliseconds: 100),
//                curve: Curves.easeIn,
//                top: 3.0,
//                left: toggleValue? 60.0:00,
//                right: toggleValue? 0.0:60.0,
//                child: InkWell(
//                  onTap: toggleButton,
//                  child: AnimatedSwitcher(
//                      duration:Duration(milliseconds: 1000),
//                   transitionBuilder: (Widget child,Animation<double>animation){
//                        return RotationTransition(
//                          child: child, turns: animation,
//                        );
//                   },
//                    child: toggleValue? Icon(
//                      Icons.check_circle,color: Colors.green,size: 35.0,
//                      key: UniqueKey(),
//
//                    ):Padding(
//                      padding: const EdgeInsets.only(left: 10.0),
//                      child: Container(
//                        width: 100,
//                        color: Colors.deepPurple,
//                          child: Text("Complete",style: TextStyle(color: Colors.white),)
//                      ),
//                    ),
//                    key: UniqueKey(),
//
//                  ),
//                ),
//              )
//            ],
//          ),
//        ),
//      ),
//    );

//    return Scaffold(
//      appBar: AppBar(
//        title: Text("Button State"),
//      ),
//      body: Center(
//        child: Wrap(
//          children: <Widget>[
//            MaterialButton(
//              onPressed: button1 ? _button1 : null,
//              child: Text("button1"),
//              color: Colors.greenAccent,
//            ),
//            MaterialButton(
//              onPressed: button2 ? _button2 : null,
//              child: Text("button2"),
//              color: Colors.greenAccent,
//            )
//          ],
//        ),
//      ),
//    );
    return Scaffold(
        appBar: AppBar(
          title: Text('Button State'),
        ),
        body: Column(
          children: <Widget>[
            Center(
                child: Wrap(
                  children: <Widget>[
                    MaterialButton(
                      onPressed: buttonState ? _buttonChange : null,
                      child: Text("button1"),
                      color: Colors.greenAccent,
                    ),
                    MaterialButton(
                      onPressed: buttonState ? null : _buttonChange,
                      child: Text("button2"),
                      color: Colors.orangeAccent,
                    ),
                  ],
                )),
          ],
        ));

  }
//  toggleButton(){
//    setState(() {
//      toggleValue =! toggleValue;
//    });
//  }
}
