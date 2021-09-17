import 'package:algorithmvisualizer/home.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:algorithmvisualizer/algorithms/sorting.dart';

class SortingPage extends StatefulWidget {
  const SortingPage({ Key? key }) : super(key: key);

  @override
  _SortingPageState createState() => _SortingPageState();
}

class _SortingPageState extends State<SortingPage> {
  @override
  Widget build(BuildContext context) {
    int choice=0;
    var screenSize = MediaQuery.of(context).size;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text('Sorting Algorithms',textAlign: TextAlign.center,style:GoogleFonts.sourceSansPro( textStyle: TextStyle(color: Color(0xff76a6f0)
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
                SizedBox(height: screenSize.height*0.1,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: screenSize.width*0.4,
                      height: screenSize.height*0.20,
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
                        choice = 1;
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Sorting(choice: choice,)));
                      }, child: Text('Selection Sort',textAlign: TextAlign.center,style:GoogleFonts.sourceSansPro( textStyle: TextStyle(color: Colors.white
                      ,fontSize: 20,fontWeight: FontWeight.w600),))),),
                      SizedBox(width: screenSize.width*0.05,),
                       Container(
                      width: screenSize.width*0.4,
                      height: screenSize.height*0.20,
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
                        choice=2;
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Sorting(choice: choice,)));
                      }, child: Text('Bubble Sort',textAlign: TextAlign.center,style:GoogleFonts.sourceSansPro( textStyle: TextStyle(color: Colors.white
                      ,fontSize: 20,fontWeight: FontWeight.w600),))),),
                  ],
                ),
        
                  SizedBox(height: screenSize.height*0.04,),

                  Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: screenSize.width*0.4,
                      height: screenSize.height*0.20,
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
                        choice =3;
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Sorting(choice: choice,)));
                      }, child: Text('Insert Sort',textAlign: TextAlign.center,style:GoogleFonts.sourceSansPro( textStyle: TextStyle(color: Colors.white
                      ,fontSize: 20,fontWeight: FontWeight.w600),))),),
                      SizedBox(width: screenSize.width*0.05,),
                       Container(
                      width: screenSize.width*0.4,
                      height: screenSize.height*0.20,
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
                        choice=4;
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Sorting(choice: choice,)));
                      }, child: Text('Merge Sort',textAlign: TextAlign.center,style:GoogleFonts.sourceSansPro( textStyle: TextStyle(color: Colors.white
                      ,fontSize: 20,fontWeight: FontWeight.w600),))),),
                  ],
                ),
        
                  SizedBox(height: screenSize.height*0.04,),

                  Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: screenSize.width*0.4,
                      height: screenSize.height*0.20,
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
                        choice=5;
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Sorting(choice: choice,)));
                      }, child: Text('Quick Sort',textAlign: TextAlign.center,style:GoogleFonts.sourceSansPro( textStyle: TextStyle(color: Colors.white
                      ,fontSize: 20,fontWeight: FontWeight.w600),))),),
                      SizedBox(width: screenSize.width*0.05,),
                       Container(
                      width: screenSize.width*0.4,
                      height: screenSize.height*0.20,
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
                        choice=6;
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Sorting(choice: choice,)));
                      }, child: Text('Heap Sort',textAlign: TextAlign.center,style:GoogleFonts.sourceSansPro( textStyle: TextStyle(color: Colors.white
                      ,fontSize: 20,fontWeight: FontWeight.w600),))),),
                  ],
                ),
        
                  SizedBox(height: screenSize.height*0.04,),
                  
                  
              ],
            ),
          ),
        ),
      ),
    );
  }
}