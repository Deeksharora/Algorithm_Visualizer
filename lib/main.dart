//import 'package:algorithmvisualizer/algorithms/sorting.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'home.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //return MultiProvider(
      //providers: [
      
     // ],
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.white,
    
          body: Mainpage()
        ),
      );
    //);
  }
}

class Mainpage extends StatefulWidget {
  const Mainpage({ Key? key }) : super(key: key);

  @override
  _MainpageState createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
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
              SizedBox(height: screenSize.height*0.1,),
              Text('Algorithm Visualizer',textAlign: TextAlign.center,style:GoogleFonts.sourceSerifPro( textStyle: TextStyle(color:Color(0xff76a6f0),fontSize: 50,fontWeight: FontWeight.bold),)),
              SizedBox(height: screenSize.height*0.03,),
              Text('Visualize and Learn!',textAlign: TextAlign.center,style: GoogleFonts.sourceSansPro( textStyle:TextStyle(color:Colors.grey,fontSize: 20,fontWeight: FontWeight.w600),)),
              SizedBox(height: screenSize.height*0.2,),
              Container(
                width: screenSize.width*0.4,
                height:screenSize.height*0.07,
                
                decoration: BoxDecoration(color:Color(0xff76a6f0),borderRadius: BorderRadius.circular(12),),
                child: TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Home() ));
                },
                 child: Text('Get Started',textAlign: TextAlign.center,style:GoogleFonts.sourceSansPro( textStyle: TextStyle(color:Colors.white,fontSize: 18,fontWeight: FontWeight.w600),))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
