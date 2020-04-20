import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Row(

          children: <Widget>[
            Icon(Icons.reorder,color: Colors.white,),
            Padding(
              padding: const EdgeInsets.only(left: 130),
              child: Text("Cheang",style: TextStyle(fontWeight: FontWeight.bold),),
            )
          ],
        ),
      ),
      backgroundColor: Colors.green[50],
      body: SafeArea(
        child: ListView.builder(
          itemCount: 5,
          itemBuilder:(context, index){
            return Card(
              elevation: 5,
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              margin: EdgeInsets.only(left: 10,right: 10,top: 10),

              child: Container(

                height: 160,
                color: Colors.grey[100],
                child:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[

                        Row(

                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(top: 10.0,left: 10),
                              child: SizedBox(
                                height: 40,
                                width: 40,

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
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Text("Sea Meymey",style: TextStyle(fontWeight: FontWeight.bold),),

                            ),
                            Padding(
                               padding: const EdgeInsets.only(left: 10.0),

                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 20),
                              child: Text("Get: 22-Feb-2020",style: TextStyle(color: Colors.black),),
                            ),

                      ],
                        ),


                    Padding(
                      padding: const EdgeInsets.only(top: 10.0,left: 10),

                      child: Row(
                        children: <Widget>[
                          Icon(Icons.phone,size: 20,),
                          Padding(
                            padding: const EdgeInsets.only(left: 30.0),
                            child: Text("012455666"),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0,left: 10),

                      child: Row(
                        children: <Widget>[
                          Icon(Icons.location_on,color: Colors.red,size: 20,),
                          Padding(
                            padding: const EdgeInsets.only(left: 30),
                            child: Text("Boung Kok"),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0,left: 15),

                      child: Row(
                        children: <Widget>[
                          Text("Service",style: TextStyle(fontSize: 13 ,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),),
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Text("Computer"),
                          )
                        ],
                      ),
                    ),

                  ],
                ) ,

              ),


            );
          },
        ),
      ),
    );
  }
}
