import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class EM extends StatefulWidget {
  const EM({Key? key}) : super(key: key);
  @override
  _EMState createState() => _EMState();
}

class _EMState extends State<EM> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("EM"),
        ),
        // body: Container(
        //   alignment: Alignment.center,
        //   padding: EdgeInsets.all(32),
        //   child: ElevatedButton(
        //     child: Text('EM syllabus'),
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
                  child: Text('EM syllabus'),
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
                  child: Text('EM lectures'),
                  onPressed: () async {
                    final url =
                        'https://drive.google.com/drive/folders/1-Kx8S-NPtmVa_KO4Do-mMJeuqMLmBwgF?usp=sharing';
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
