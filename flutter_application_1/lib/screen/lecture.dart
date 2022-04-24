import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/HomePage.dart';



class Lecture extends StatefulWidget {
  @override
  _LectureState createState() => _LectureState();
}

class _LectureState extends State<Lecture> {
  @override
  Widget build(BuildContext context) {
    return 
    MaterialApp(
      title: 'Tab inside body widget',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home:Scaffold(
      appBar: AppBar(
        title: Text('Schedules'),
          iconTheme: IconThemeData(
    color: Colors.black, //change your color here
  ),
  

      ),
      body: Container(
        
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SizedBox(height: 20.0),
              Text('Time Table',
                  textAlign: TextAlign.center, style: TextStyle(fontSize: 22)),
              DefaultTabController(
                  length: 3, // length of tabs
                  initialIndex: 0,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Container(
                          child: TabBar(
                            labelColor: Colors.green,
                            unselectedLabelColor: Colors.black,
                            tabs: [
                              Tab(text: '1st year'),
                              Tab(text: '2nd year'),
                              Tab(text: '3rd year'),
                            ],
                          ),
                        ),
                        Container(
                            height: 400, //height of TabBarView
                            decoration: BoxDecoration(
                                border: Border(
                                    top: BorderSide(
                                        color: Colors.grey, width: 0.5))),
                            child: TabBarView(children: <Widget>[
                              new Image.asset(
                                'assets/images/1styear.jpg',
                                width: 300,
                                height: 200,
                              ),
                              new Image.asset('assets/images/2ndyear.png'),
                              new Image.asset('assets/images/3rdyear.png'),
                            ])),
                              FlatButton(
                               
                               color: Color.fromARGB(255, 117, 161, 197),
                            child: Text('Dashboard', style: TextStyle(color: Colors.white, fontSize: 17),),
                            onPressed: () {
                              Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage()));

                      
                            }
                          ),
                      ])),
            ]
            ),
      ),
    ),);
   
  }
}
