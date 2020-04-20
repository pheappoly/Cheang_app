import 'package:flutter/material.dart';
import 'login.dart';



class CustomerList extends StatefulWidget {

  @override
  _CustomerListState createState() => _CustomerListState();
}

class _CustomerListState extends State<CustomerList> {
  bool button1 = true;
  bool button3 = false;
  bool button2  = false;


  /////// Complete Button
  void _button1() {
    setState(() {
      button1 = false;
      button2 = true;
      button3=false;
    });
  }

  //////// Incomplete Button
  void _button2() {
    setState(() {
      button1 = true;
      button2 = false;
      button3 = false;
    });
  }



  //////// Repairing Button
  void _button3(){
    setState(() {
      button3 = true;
      button1 = false;
      button2 = false;
    });
  }


  //////// widget for implement change button status
  Widget _stateButton(){
    return  Expanded(
      flex: 3,
      child: Row(

        children: <Widget>[
          VerticalDivider(
            color: Colors.green,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Container(
              // color: Colors.red,


              child: Column(

                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 5.0),
                    child: MaterialButton(

                      onPressed: button3 ? _button3 : null,
                      child: Text("Repairing",style: TextStyle(color: Colors.grey,fontSize: 12),),
                      color: Colors.greenAccent,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 5.0),
                    child: MaterialButton(
                      onPressed: button2 ? _button2 : null,
                      child: Text("Complete"),
                      color: Colors.greenAccent,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 0.0),
                    child: MaterialButton(
                      onPressed: button1 ? _button1 : null,
                      child: Text("Incomplete"),
                      color: Colors.red,
                    ),
                  )


                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          title: Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Center(child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 70),
                  child: Text("Cheang",style: TextStyle(fontWeight: FontWeight.bold,fontStyle: FontStyle.italic,fontSize: 25,color: Colors.white),),
                ),
                Icon(Icons.notifications,color: Colors.white,)
              ],
            )),
          ),

          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,

                    colors: <Color>[
                      Color(0xFFB2DFDB),Color(0xFF80CBC4),
                      Color(0xFF4DB6AC),Color(0xFF26A69A),

                    ],
                    stops: [0.1,0.4,0.7,0.9]
                )
            ),

          ),
        ),
      drawer: Drawer(

        elevation: 8,
        child: Container(

          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomLeft,
                colors: [
                  Color(0xFFB2DFDB),Color(0xFF80CBC4),
                  Color(0xFF4DB6AC),Color(0xFF26A69A),
                ],
                stops: [0.1,0.4,0.7,0.9]
            )
        ),

          child: ListView(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 10,right: 10),
                    child: Container(
                      height: 150,
                      width: double.infinity,
                      child: ClipRRect(

                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10)

                            ),


                       child: Image.network(
                           'https://picsum.photos/250?image=9',
                         fit: BoxFit.fill,
                       ),

                      ),

                    ),
                  ),


//                  Padding(
//                    padding: const EdgeInsets.only(top: 100,left: 25),
//                    child: Text("TC Computer",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
//                  ),
//                  Padding(
//                    padding: const EdgeInsets.only(top: 120,left: 25),
//                    child: Text("tccomputer@gmail.com",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
//                  ),


                  Padding(
                    padding: const EdgeInsets.only(top: 100,left: 20,right: 20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          height: 100,


                          width: 220,

                          decoration: BoxDecoration(

                            color: Colors.white70,
                            borderRadius: BorderRadius.all(Radius.circular(10))

                          ),
                          child: Column(
                            children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(top: 20,right: 100),
                              child: Text("TC Computer",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                            ),
                              SizedBox(height: 10,),

                              Padding(
                                  padding: const EdgeInsets.only(top: 0,right: 30),
                                  child: Text("tccomputer@gmail.com",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold))




                            ),
                            ],
                          ),
                        ),


                        Padding(
                          padding: const EdgeInsets.only(top: 10,left: 0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(25),
                            child: Container(
                              color: Colors.grey[100],
                              height: 25,
                              width: 25,
                             child: GestureDetector(
                                 child: Icon(Icons.camera_alt,size: 15,),
                               onTap: (){},
                             ),

                            ),

                          ),
                        ),

                      ],
                    ),
                  ),

                ],
              ),
              SizedBox(height: 20,),
              Divider(
                color: Colors.grey,
              ),

              FlatButton(
                onPressed: (){},
                child: ListTile(
                  title: Text("Me",style: TextStyle(fontStyle: FontStyle.italic,fontSize: 15,color: Colors.white),),
                  trailing: Icon(Icons.account_circle,color: Colors.white,size: 20,),
                ),
              ),
//              Divider(
//                color: Colors.grey[100],
//              ),
              FlatButton(
                onPressed: (){

                },
                child: ListTile(

                  title: Text("Setting",style: TextStyle(fontStyle: FontStyle.italic,fontSize: 15,color: Colors.white),),
                  trailing: Icon(Icons.settings,color: Colors.white,size: 20,),
                ),
              ),
//              Divider(
//                color: Colors.grey[100],
//              ),
              FlatButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => NewLogin(),));

                },
                child: ListTile(

                  title: Text("Logout",style: TextStyle(fontStyle: FontStyle.italic,fontSize: 15,color: Colors.white),),
                  trailing: Icon(Icons.filter,color: Colors.white,size: 20,),
                ),
              ),
            ],
          ),
        ),
      ),

      body: SafeArea(
          child: ListView.builder(
              itemCount: 3,
              itemBuilder:(context, index){
                return Card(

                  //color: Colors.green,
                  elevation: 5,
                  clipBehavior: Clip.antiAlias,
                  shape: RoundedRectangleBorder(

                    borderRadius: BorderRadius.circular(15.0),

                  ),
                  margin: EdgeInsets.only(left: 10,right: 10,top: 10),
                  child: Container(
//                    decoration: new BoxDecoration(
//                      color: Hexcolor('#34cc89'),
//                    ),
                  color: Colors.white,
                    height: 150,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Expanded(
                          flex: 4,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(

                                children: <Widget>[

                                  Padding(
                                    padding: const EdgeInsets.only(left: 10,top: 10),
                                    child: SizedBox(
                                      height: 30,
                                      width: 30,

                                      child: ClipRRect(


                                        borderRadius: BorderRadius.circular(25),
                                        child: Container(
                                          color: Colors.grey[100],
                                          child: Image.asset(
                                            'lib/assets/images/panda.jpg',
                                            fit: BoxFit.cover,
                                          ),
                                        ),

                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 5),
                                    child: Text("Seameymey",style: TextStyle(fontWeight: FontWeight.bold),),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 10),
                                    child: Text("22-Feb-2020",style: TextStyle(color: Colors.black,fontSize: 10),),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,

                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Icon(Icons.phone,color: Colors.green,size: 20,),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Text(":",style: TextStyle(fontWeight: FontWeight.bold),),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Text("099428489",style: TextStyle(color: Colors.blue,fontSize: 15),),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,

                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: GestureDetector(
                                      onTap: (){
                                       // Navigator.push(context, MaterialPageRoute(builder: (context) => DetailScreen(),));
                                      },
                                        child: Icon(Icons.location_on,size: 20,color: Colors.red,),
                                    ),
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.only(left: 5),
                                    child: Text(":",style: TextStyle(fontWeight: FontWeight.bold),),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: GestureDetector(
                                      onTap: (){
                                        //Navigator.push(context, MaterialPageRoute(builder: (context) => DetailScreen(),));
                                      },
                                        child: Text("#40F,St.606,Boueng Kok",style: TextStyle(color: Colors.teal,fontSize: 12),)),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15),
                                    child: Text("Service :",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.green),),
                                  ),
                                  Text("Computer",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),)
                                ],
                              ),
                            ],
                          ),
                        ),
                        _stateButton()

//
                      ],
                    ),

                  ),

          );
        }))
    );
  }
}
