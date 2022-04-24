import 'package:flutter/material.dart';

class InstituteDetailPage extends StatefulWidget {
  const InstituteDetailPage({ Key? key }) : super(key: key);

  @override
  State<InstituteDetailPage> createState() => _InstituteDetailPageState();
}

class _InstituteDetailPageState extends State<InstituteDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        appBar: AppBar(
        title:Text('back'),
        
        
      ),
      body: getBody(),
    );
  }

  Widget getBody(){
    var size=MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Stack(
        children: <Widget>[
          Container(
            width: size.width,
            height: size.height*0.5,
            decoration: BoxDecoration(
              image:DecorationImage(image:AssetImage('assets/images/iiit.jpg'),fit:BoxFit.cover)

            ),
            

          ),
          Container(
            margin: EdgeInsets.only(top: size.height*0.45),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(50)
            ),
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:<Widget> [
                  Align(child:
                Container(
                  width: 150,
                  height: 7,
                  decoration: BoxDecoration(
                    color: Colors.red[50],
                    borderRadius: BorderRadius.circular(10)
                  ),
                ),
                  ),
                 SizedBox(height: 10),
          Text("About IIITN",style: TextStyle(decorationThickness: 8,fontSize: 20,height: 2.5
          ),
          ),

            SizedBox(height: 0.1),
          Text("Directors Message",style: TextStyle(decorationThickness: 8,fontSize: 20,height: 1.5
          ),
          ),
          SizedBox(height: 10,),
          Text("Greetings All are aware that Indian Institute of Information Technology, Nagpur (IIITN) has started functioning in the Year 2016-17 and technically, is still in the establishment stageI would like to assure all the students that IIITN understands the fast pace of changes occurring in the field of Information Technology. To cope up with the speed of changes, we undertake the review of Academic Curriculum on regular basis through the Board of Studies consisting of experts from and IITs/NITs & Industry Experts including inputs from the students. Fine tuning of course curriculum, introduction of new courses, modifications of course contents is being done regularly in accordance with the recommendations / suggestions provided by Board of Studies and approved by the Senate.",style:
          TextStyle(
            height: 1.6,


          ),),
          SizedBox(height: 20,),
          Text('Gallery',style: TextStyle(
            fontSize: 18
          ),),
          SizedBox(height: 20,),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,



          child:



          Row(children: <Widget> [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.
                  circular(10),
                  image: DecorationImage(image:AssetImage("assets/images/image 3.png"),fit: BoxFit.cover)

                ),
              ),
            ),
             Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.
                  circular(10),
                  image: DecorationImage(image:AssetImage("assets/images/image 4.png"),fit: BoxFit.cover)

                ),
              ),
            ),
             Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.
                  circular(10),
                  image: DecorationImage(image:AssetImage("assets/images/iiit.jpg"),fit: BoxFit.cover )

                ),
              ),
            ),
             Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.
                  circular(10),
                  image: DecorationImage(image:AssetImage("assets/images/logo2.png"),fit: BoxFit.cover)

                ),
              ),
            ),
             Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.
                  circular(10),
                  image: DecorationImage(image:AssetImage("assets/images/img.png"),fit: BoxFit.cover)

                ),
              ),
            ),
          ],)




              ),],),
            ),
          ),
         

        ],
      ),

    );

  }
}