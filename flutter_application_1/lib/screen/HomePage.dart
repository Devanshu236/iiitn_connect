import 'package:flutter/material.dart';
import 'package:flutter_application_1/clubs.dart';
import 'package:flutter_application_1/screen/Admission.dart';
import 'package:flutter_application_1/screen/add.dart';
import 'package:flutter_application_1/screen/courses.dart';
//import 'package:flutter_application_1/screen/addStudent.dart';
import 'package:flutter_application_1/screen/instituteGoals.dart';
import 'package:flutter_application_1/screen/lecture.dart';
import 'package:flutter_application_1/screen/signin.dart';
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

            height:size.height*0.22 ,
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
                      SizedBox(width: 15,),

                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                      
                          children:<Widget> [
                            Text("Devanshu Gupta",style: TextStyle(fontSize: 18),),
                            Text("Guptadevanshu74@gmail.com",style: TextStyle(fontSize: 13),),
                             FlatButton(
                               
                               color: Color.fromARGB(255, 6, 73, 128),
                            child: Text('Logout', style: TextStyle(color: Colors.white, fontSize: 17),),
                            onPressed: () {
                              Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignInPage()));

                      
                            }
                          ),
                      
                          ],
                      
                        ),
                      )
                    ],
                  ),
                ),

                SizedBox(height:50),
                Expanded(child: GridView(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => InstituteDetailPage()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromARGB(255, 8, 86, 150),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.article_rounded,
                          size: 50,
                          color: Colors.white,
                        ),
                        Text(
                          "Institute Goals",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        )
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Admisions()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.red,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.article_rounded,
                          size: 50,
                          color: Colors.white,
                        ),
                        Text(
                          "Student Addmisions",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        )
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => MyHomePage()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.yellow,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.article_rounded,
                          size: 50,
                          color: Colors.white,
                        ),
                        Text(
                          "Courses Available",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        )
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => AddData()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.pink,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.article_rounded,
                          size: 50,
                          color: Colors.white,
                        ),
                        Text(
                          "Events",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        )
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Lecture()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.green,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.article_rounded,
                          size: 50,
                          color: Colors.white,
                        ),
                        Text(
                          "Lecture Schedules",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        )
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ClubApp()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.article_rounded,
                          size: 50,
                          color: Colors.white,
                        ),
                        Text(
                          "Clubs",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        )
                      ],
                    ),
                  ),
                ),
              ],
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10)),
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