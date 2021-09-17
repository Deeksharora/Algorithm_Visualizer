
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:algorithmvisualizer/home.dart';

class Searching extends StatefulWidget {
  const Searching({ Key? key }) : super(key: key);

  @override
  _SearchingState createState() => _SearchingState();
}

class _SearchingState extends State<Searching> {


  @override
  Widget build(BuildContext context) {
    
    var screenSize = MediaQuery.of(context).size;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text('Searching Algorithms',textAlign: TextAlign.center,style:GoogleFonts.sourceSansPro( textStyle: TextStyle(color: Color(0xff76a6f0)
                ,fontSize: 20,fontWeight: FontWeight.w600),)),
          actions: <Widget>[
            IconButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> Home()));}, icon: Icon(Icons.home),color:Color(0xff76a6f0) ,)
          ],
        ),
        
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: screenSize.height*0.05,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  
                  children: [
                    Container(
                      width: screenSize.width*0.4,
                      height: screenSize.height*0.25,
                      decoration: BoxDecoration(
                         boxShadow:[ BoxShadow(
                           color:  Colors.blueGrey.withOpacity(0.5),
                    offset: const Offset(2.0, 2.0),
                    blurRadius: 5.0,
                    spreadRadius: 2.0,
              ),
            ],
                        color:Color(0xff76a6f0),
                        borderRadius: BorderRadius.circular(12),
                        ),
                        
                      child: TextButton(onPressed: (){
                      }, child: Text('Linear  Search',textAlign: TextAlign.center,style:GoogleFonts.sourceSansPro( textStyle: TextStyle(color: Colors.white
                      ,fontSize: 25,fontWeight: FontWeight.w600),))),),
                      SizedBox(width: screenSize.width*0.05,),
                       Container(
                      width: screenSize.width*0.4,
                      height: screenSize.height*0.25,
                      decoration: BoxDecoration(
                         boxShadow:[ BoxShadow(
                           color:  Colors.blueGrey.withOpacity(0.5),
                    offset: const Offset(2.0, 2.0),
                    blurRadius: 5.0,
                    spreadRadius: 2.0,
              ),
            ],
                        color:Color(0xff76a6f0),
                        borderRadius: BorderRadius.circular(12),
                        ),
                        
                      child: TextButton(onPressed: (){
                      }, child: Text('Binary Search',textAlign: TextAlign.center,style:GoogleFonts.sourceSansPro( textStyle: TextStyle(color: Colors.white
                      ,fontSize: 25,fontWeight: FontWeight.w600),))),),
                  ],
                ),
                
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}