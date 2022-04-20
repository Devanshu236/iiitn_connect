import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CAO extends StatefulWidget {
  const CAO({Key? key}) : super(key: key);
  @override
  _CAOState createState() => _CAOState();
}

class _CAOState extends State<CAO> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("CAO"),
        ),
        // body: Container(
        //   alignment: Alignment.center,
        //   padding: EdgeInsets.all(32),
        //   child: ElevatedButton(
        //     child: Text('CAO syllabus'),
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
                  child: Text('CAO syllabus'),
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
                  child: Text('CAO lectures'),
                  onPressed: () async {
                    final url =
                        'https://drive.google.com/drive/folders/1MFEgRDnE8HVHnXN_sC-opWQ3xPQJGEi1';
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
