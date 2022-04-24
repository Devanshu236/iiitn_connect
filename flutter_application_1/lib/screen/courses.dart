import 'dart:ui';
import 'package:flutter_application_1/screen/cao.dart';
import 'package:flutter_application_1/screen/cs.dart';
import 'package:flutter_application_1/screen/em.dart';
import 'package:flutter_application_1/screen/hdl.dart';
import 'package:flutter_application_1/screen/itw2.dart';
import 'package:flutter_application_1/utils/colors.dart';


import 'dsp.dart';
import 'package:flutter/material.dart';




class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'List of available cources',
      debugShowCheckedModeBanner: false,
     
      home:
    Scaffold(
      appBar: AppBar(
        title:Text('back'),
        
        
      ),
    
      
      
      body: Container(
         
           
             decoration: BoxDecoration(gradient: LinearGradient(colors:[hexStringToColor("#5BB3EE"),
        hexStringToColor("#258EC5"),
        hexStringToColor("#00537F")],begin:Alignment.topCenter,end:Alignment.bottomCenter)),
        
          
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          
          child: GridView(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => DSP()));
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
                          "DSP",
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        )
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => CAO()));
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
                          "CAO",
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        )
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => CS()));
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
                          "CS",
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        )
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => EM()));
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
                          "EM",
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        )
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HDL()));
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
                          "HDL",
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        )
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ITWS()));
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
                          "ITWS",
                          style: TextStyle(color: Colors.white, fontSize: 30),
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
        
      ),
      
    ));
  }
}
