import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DSP extends StatefulWidget {
  const DSP({Key? key}) : super(key: key);
  @override
  _DSPState createState() => _DSPState();
}

class _DSPState extends State<DSP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DSP"),
      ),
      // body: Container(
      //   alignment: Alignment.center,
      //   padding: EdgeInsets.all(32),
      //   child: ElevatedButton(
      //     child: Text('dsp syllabus'),
      //     onPressed: () async {
      //       final url = 'https://iiitn.ac.in/page/download/238/#';
      //       if (await canLaunch(url)) {
      //         await launch(url);
      //       }
      //     },
      //   ),
        
      // ),
     body: Center(child:Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              
              children: [
                Container(
                  
                  child: ElevatedButton(
                     child: Text('dsp syllabus'),
                     
                     onPressed: () async {
            final url = 'https://iiitn.ac.in/page/download/238/#';
            if (await canLaunch(url)) {
              await launch(url);
            }
          },),
            padding: EdgeInsets.all(50),
                  color: Colors.grey,
                  
                 
                ),
                 Container(
                  child: ElevatedButton(
                     child: Text('Google Classroom Link'),
                     onPressed: () async {
            final url = 'https://classroom.google.com/u/1/c/MjcwOTQwNDgyNjU1';
            if (await canLaunch(url)) {
              await launch(url);
            }
          },),
           padding: EdgeInsets.all(50),
                  color: Colors.grey,
                 
                ),
                Container(
                  child: ElevatedButton(
                     child: Text('DSP lectures'),
                     onPressed: () async {
            final url = 'https://classroom.google.com/c/MjcwOTQwNDgyNjU1?cjc=n7tknd7';
            if (await canLaunch(url)) {
              await launch(url);
            }
          },),
           padding: EdgeInsets.all(50),
                  color: Colors.grey,
                 
                ),
                
              ],
            ),)
    );
  }
}
