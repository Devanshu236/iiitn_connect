import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/Admission.dart';
import 'package:flutter_application_1/screen/courses.dart';
//import 'package:flutter_application_1/screen/addStudent.dart';
import 'package:flutter_application_1/screen/instituteGoals.dart';
//import 'package:flutter_application_1/screen/student_admission.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_application_1/screen/curvedShape.dart';
import 'package:flutter_application_1/utils/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return Scaffold(
      body:
       Stack(
         
        
       
        children: <Widget>[
           

          Container(
            height:size.height*0.19 ,
             decoration: BoxDecoration(gradient: LinearGradient(colors:[hexStringToColor("#5BB3EE"),
        hexStringToColor("#258EC5"),
        hexStringToColor("#00537F")],begin:Alignment.topCenter,end:Alignment.bottomCenter)),
          ),
          SafeArea(child:
          Padding(
            padding:  EdgeInsets.all(28.0),
            child: Column(
              children: <Widget>[
                Container(
                  height: 64,
                  margin:EdgeInsets.only(bottom:10) ,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children:<Widget> [
                      CircleAvatar(
                        radius: 32,
                        backgroundImage: AssetImage('assets/images/logo.png'),
                        
                      ),
                      SizedBox(width: 20,),

                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children:<Widget> [
                          Text("Devanshu Gupta",style: TextStyle(fontSize: 23),),
                          Text("Guptadevanshu74@gmail.com",style: TextStyle(fontSize: 16),)

                        ],

                      )
                    ],
                  ),
                ),

                SizedBox(height:50),
                Expanded(child: 
                GridView.count(
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  primary: false,
                  crossAxisCount: 2,
                  children: <Widget>[
                    Card(
                      color: Color.fromARGB(255, 8, 83, 117),
                      
                      
                      
                      
                      shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(8) ),
                      elevation: 4,
                     
                      
                      
                      child:
                       Column(children:<Widget> [
                          
                        
                        Icon(
                         
                         
                        
                          Icons.home_max_rounded,size: 80,color: Colors.blueGrey,),
                          SizedBox(height:15),
                          
                          
                        Text("Institute Goals",style: TextStyle(fontSize: 17,color: Colors.white)),
                           GestureDetector(
                           onTap: () {
                         Navigator.push(context,
                        MaterialPageRoute(builder: (context) => InstituteDetailPage()));
          },),
                        
                      ],),
                    ),
                    Card(
                      color: Colors.lightGreen,
                      
                     
                      
                       
                          
                       
                    
                      shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(8) ),
                      elevation: 4,
                      child: Column(children:<Widget> [
                        
                          
                        Icon(
                         
                         
                        
                          Icons.event_busy_rounded,size: 80,color: Colors.blueGrey,),
                          SizedBox(height:15),
                        
                       
                        Text("Student Admission",style: TextStyle(fontSize: 17,color: Colors.white)),
                         GestureDetector(
                           onTap: () {
                         Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Admissions()));
          },),
                      ],),
                     ),
                    Card(
                      color: Colors.amber,
                     
                      shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(8) ),
                      elevation: 4,
                      child: Column(children:<Widget> [
                        
                          
                        Icon(
                         
                         
                        
                          Icons.school,size: 80,color: Colors.blueGrey,),
                          SizedBox(height:15),
                        Text("Courses Available",style: TextStyle(fontSize: 17,color: Colors.white)),
                         GestureDetector(
                           onTap: () {
                         Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MyHomePage()));
          },),
                      ],),
                    ),
                    Card(
                      color: Colors.deepOrange,
                      shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(8) ),
                      elevation: 4,
                      child: Column(children:<Widget> [
                        
                         
                        Icon(
                         
                         
                        
                        Icons.video_call_rounded,size: 80,color: Colors.blueGrey,),
                        SizedBox(height:15),
                        Text("Institute Club ",style: TextStyle(fontSize: 17,color: Colors.white)),
                         
                        
                      ],),
                    ),
                    Card(
                       color: Colors.pink,
                      shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(8) ),
                      elevation: 4,
                      child: Column(children:<Widget> [
                        
                         
                        Icon(
                         
                         
                        
                          Icons.school,size: 80,color: Colors.blueGrey,),
                          SizedBox(height:15),
                        Text("Upcoming Events",style: TextStyle(fontSize: 17,color: Colors.white)),
                      ],),
                    ),
                    Card(
                        color: Colors.pink[900],
                      shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(8) ),
                      elevation: 4,
                      child: Column(children:<Widget> [
                        
                           
                        Icon(
                         
                         
                        
                           Icons.event_busy_rounded,size: 80,color: Colors.blueGrey,),
                           SizedBox(height:15),
                        Text("Lecture Schedules",style: TextStyle(fontSize: 17,color: Colors.white)),
                      ],),
                    ),

                  ],
                  )
                ),
              ],

            ),
          ),
          ),



        ],

      ),

       
    );
  }
}