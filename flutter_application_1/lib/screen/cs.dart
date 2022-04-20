import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CS extends StatefulWidget {
  const CS({Key? key}) : super(key: key);
  @override
  _DSPState createState() => _DSPState();
}

class _DSPState extends State<CS> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("CS"),
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
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                child: ElevatedButton(
                  child: Text('CS syllabus'),
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
                  child: Text('CS lectures'),
                  onPressed: () async {
                    final url =
                        'https://drive.google.com/folderview?id=13t1qu3ZXPPhyN3wtuX0Ruq84Y7ms3k3R';
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
