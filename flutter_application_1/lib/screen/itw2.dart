import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ITWS extends StatefulWidget {
  const ITWS({Key? key}) : super(key: key);
  @override
  _ITWSState createState() => _ITWSState();
}

class _ITWSState extends State<ITWS> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("ITWS"),
        ),
        // body: Container(
        //   alignment: Alignment.center,
        //   padding: EdgeInsets.all(32),
        //   child: ElevatedButton(
        //     child: Text('ITWS syllabus'),
        //     onPressed: () async {
        //       final url = 'https://iiitn.ac.in/page/download/238/#';
        //       if (await canLaunch(url)) {
        //         await launch(url);
        //       }
        //     },
        //   ),

        // ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                child: ElevatedButton(
                  child: Text('ITWS syllabus'),
                  onPressed: () async {
                    final url = 'https://iiitn.ac.in/page/download/238/#';
                    if (await canLaunch(url)) {
                      await launch(url);
                    }
                  },
                ),
                padding: EdgeInsets.all(50),
                color: Colors.grey,
              ),
              Container(
                child: ElevatedButton(
                  child: Text('Google Classroom Link'),
                  onPressed: () async {
                    final url =
                        'https://classroom.google.com/u/1/c/NDc5MjMxNjI0MTgy';
                    if (await canLaunch(url)) {
                      await launch(url);
                    }
                  },
                ),
                padding: EdgeInsets.all(50),
                color: Colors.grey,
              ),
              Container(
                child: ElevatedButton(
                  child: Text('ITWS lectures'),
                  onPressed: () async {
                    final url =
                        'https://classroom.google.com/c/MjcwOTQwNDgyNjU1?cjc=n7tknd7';
                    if (await canLaunch(url)) {
                      await launch(url);
                    }
                  },
                ),
                padding: EdgeInsets.all(50),
                color: Colors.grey,
              ),
            ],
          ),
        ));
  }
}
