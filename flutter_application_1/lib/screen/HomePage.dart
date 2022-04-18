import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/addStudent.dart';
import 'package:flutter_application_1/screen/instituteGoals.dart';
import 'package:flutter_application_1/screen/student_admission.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
      body: Stack(
        children: <Widget>[
          Container(
            height:size.height*0.3 ,
            decoration: BoxDecoration(
              image: DecorationImage(
                alignment: Alignment.topCenter,
                image: AssetImage('assets/images/im.png')
              ),


            ),
          ),
          SafeArea(child:
          Padding(
            padding:  EdgeInsets.all(18.0),
            child: Column(
              children: <Widget>[
                Container(
                  height: 64,
                  margin:EdgeInsets.only(bottom:20) ,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                          Text("Devanshu Gupta",style: TextStyle(fontSize: 20),),
                          Text("Guptadevanshu74@gmail.com",style: TextStyle(fontSize: 15),)

                        ],

                      )
                    ],
                  ),
                ),
                Expanded(child: 
                GridView.count(
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  primary: false,
                  crossAxisCount: 2,
                  children: <Widget>[
                    Card(
                      
                      
                      
                      shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(8) ),
                      elevation: 4,
                     
                      
                      
                      child:
                       Column(children:<Widget> [
                        
                        
                        Image.network('https://img.icons8.com/external-smashingstocks-flat-smashing-stocks/452/external-scholar-elearning-smashingstocks-flat-smashing-stocks.png',height:128,),
                        Text("Persoanl Data"),
                           GestureDetector(
                           onTap: () {
                         Navigator.push(context,
                        MaterialPageRoute(builder: (context) => InstituteDetailPage()));
          },),
                        
                      ],),
                    ),
                    Card(
                      shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(8) ),
                      elevation: 4,
                      child: Column(children:<Widget> [
                        
                        Image.network('https://img.icons8.com/external-smashingstocks-flat-smashing-stocks/452/external-scholar-elearning-smashingstocks-flat-smashing-stocks.png',height:128,),
                        Text("Student Admission"),
                         GestureDetector(
                           onTap: () {
                         Navigator.push(context,
                        MaterialPageRoute(builder: (context) => StudentAdmission()));
          },),
                      ],),
                    ),
                    Card(
                      shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(8) ),
                      elevation: 4,
                      child: Column(children:<Widget> [
                        
                        Image.network('https://img.icons8.com/external-smashingstocks-flat-smashing-stocks/452/external-scholar-elearning-smashingstocks-flat-smashing-stocks.png',height:128,),
                        Text("Persoanl Data"),
                      ],),
                    ),
                    Card(
                      shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(8) ),
                      elevation: 4,
                      child: Column(children:<Widget> [
                        
                        Image.network('https://img.icons8.com/external-smashingstocks-flat-smashing-stocks/452/external-scholar-elearning-smashingstocks-flat-smashing-stocks.png',height:128,),
                        Text("Persoanl Data"),
                      ],),
                    ),
                    Card(
                      shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(8) ),
                      elevation: 4,
                      child: Column(children:<Widget> [
                        
                        Image.network('https://img.icons8.com/external-smashingstocks-flat-smashing-stocks/452/external-scholar-elearning-smashingstocks-flat-smashing-stocks.png',height:128,),
                        Text("Persoanl Data"),
                      ],),
                    ),
                    Card(
                      shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(8) ),
                      elevation: 4,
                      child: Column(children:<Widget> [
                        
                        Image.network('https://img.icons8.com/external-smashingstocks-flat-smashing-stocks/452/external-scholar-elearning-smashingstocks-flat-smashing-stocks.png',height:128,),
                        Text("Persoanl Data"),
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