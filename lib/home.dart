import 'package:algorithmvisualizer/pages/pathfindingalgo.dart';
import 'package:algorithmvisualizer/pages/searchingalgopage.dart';
import 'package:algorithmvisualizer/pages/sortingalgopage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';


class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        
        
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: screenSize.width*0.8,
                height: screenSize.height*0.15,
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
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Searching()));
                }, child: Text('Searching Algorithms',textAlign: TextAlign.center,style:GoogleFonts.sourceSansPro( textStyle: TextStyle(color: Colors.white
                ,fontSize: 20,fontWeight: FontWeight.w600),))),),

                SizedBox(height: screenSize.height*0.04,),

                Container(
                width: screenSize.width*0.8,
                height: screenSize.height*0.15,
                decoration: BoxDecoration(
                  color:Color(0xff76a6f0),
                  boxShadow: [
            BoxShadow(
              color:  Colors.blueGrey.withOpacity(0.5),
              offset: const Offset(2.0, 2.0),
              blurRadius: 5.0,
              spreadRadius: 2.0,
            ),
          ],
                  borderRadius: BorderRadius.circular(12),
                  ),
                child: TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> SortingPage()));
                }, child: Text('Sorting Algorithms',textAlign: TextAlign.center,style:GoogleFonts.sourceSansPro( textStyle: TextStyle(color: Colors.white
                ,fontSize: 20,fontWeight: FontWeight.w600),))),),

                SizedBox(height: screenSize.height*0.04,),

                Container(
                width: screenSize.width*0.8,
                height: screenSize.height*0.15,
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
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> PathFinding()));
                }, child: Text('Path Finding Algorithms',textAlign: TextAlign.center,style:GoogleFonts.sourceSansPro( textStyle: TextStyle(color: Colors.white
                ,fontSize: 20,fontWeight: FontWeight.w600),))),)
            ],
          ),
        ),
      ),
    );
  }
}