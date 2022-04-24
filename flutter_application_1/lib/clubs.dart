import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/HomePage.dart';
import 'package:vertical_card_pager/vertical_card_pager.dart';

void main() {
  runApp(const ClubApp());
}

class ClubApp extends StatelessWidget {
  const ClubApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Vertical Card Pager',
      home: Clubs(),
    );
  }
}

class Clubs extends StatefulWidget {
  const Clubs({Key? key}) : super(key: key);

  @override
  _ClubsState createState() => _ClubsState();
}

class _ClubsState extends State<Clubs> {
  @override
  Widget build(BuildContext context) {
   
    
    final List<String> titles = [
      "SKILLS NIGHTS",
      "ORATOR",
      "ACE",
      "DOTSLAH",
      "IOT",
      "STROKES",
    ];

    final List<Widget> images = [
      Container(
        color: Colors.red,
        child:  InkWell(
          onTap: () { Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage()));
},
          child: Ink.image(
            image: AssetImage('assets/images/sk.jpg'),
            height: 100,
            width: 100,
            fit: BoxFit.cover,)
        )
        // color: Colors.red,
      ),
      Container(
        color: Colors.yellow,
        child:  InkWell(
          onTap: () {},
          child: Ink.image(
            image: AssetImage('assets/images/orator.jpeg'),
            height: 100,
            width: 100,
            fit: BoxFit.cover,)
        )
      ),
      Container(
        color: Colors.black,
        child:  InkWell(
          onTap: () {},
          child: Ink.image(
            image: AssetImage('assets/images/ace.jpg'),
            height: 100,
            width: 100,
            fit: BoxFit.cover,)
        )
      ),
      Container(
        color: Colors.cyan,
        child:  InkWell(
          onTap: () {},
          child: Ink.image(
            image: AssetImage('assets/images/dotslash.jpg'),
            height: 100,
            width: 100,
            fit: BoxFit.cover,)
        )
      ),
      Container(
        color: Colors.grey,
        child:  InkWell(
          onTap: () {},
          child: Ink.image(
            image: AssetImage('assets/images/iot.jpg'),
            height: 100,
            width: 100,
            fit: BoxFit.cover,)
        )
      ),
      Container(
        color: Colors.blue,
        child:  InkWell(
          onTap: () {},
          child: Ink.image(
            image: AssetImage('assets/images/strokes.jpg'),
            height: 100,
            width: 100,
            fit: BoxFit.cover,)
        )
      ),
      
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("CLUBS"),),
      ),
      body: 
      SafeArea(
        
        child: Column(
          
          children: <Widget>[
            Expanded(
              child: Container(
                child: VerticalCardPager(
                  textStyle: const TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                  titles: titles,
                  images: images,
                  onPageChanged: (page) {},
                  align: ALIGN.CENTER,
                  onSelectedItem: (index) {},
                ),
                
              ),
              
            ),
             FlatButton(
                               
                               color: Color.fromARGB(255, 117, 161, 197),
                            child: Text('Dashboard', style: TextStyle(color: Colors.white, fontSize: 17),),
                            onPressed: () {
                              Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage()));

                      
                            }
                          ),
          ],
        ),
      ),
    );
  }
}