import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Admissions extends StatefulWidget {
  const Admissions({ Key? key }) : super(key: key);

  @override
  State<Admissions> createState() => _AdmissionsState();
}

class _AdmissionsState extends State<Admissions> {

 late String studentName,studentID,studyProgramID,studentGPA;

 getStudentName(Name){
   this.studentName=Name;
 }

 getStudentId(ID){
   this.studentID=ID;
 }

 getstudyProgramID(ProgramID){
   this.studyProgramID=ProgramID;
 }
     getstudentGPA(GPA){
       this.studentGPA=GPA;
     }

     createData(){
       print("created");
       
       DocumentReference documentReference=FirebaseFirestore.instance.collection("MyStudents").doc(studentName);

       Map<String, dynamic> students={
         "studentName":studentName,
         "studentID":studentID,
         "studyProgramID":studyProgramID,
         "studentGPA":studentGPA

       };

       documentReference.set(students).whenComplete((){
         print("$studentName created");
       });



     }

     readData(){
       print("read");
     }
     updateData(){
       print("update");
     }

     deleteData(){
       print("deleted");
     }





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Students Admission"),

      ),

      body:Column(children: [
        Padding(padding: EdgeInsets.all(16.0),
        child: TextFormField(
          decoration: InputDecoration(labelText: "Name,",
          fillColor: Colors.white,focusedBorder: OutlineInputBorder(borderSide: 
          BorderSide(color: Colors.blue,width: 2.0))),
          onChanged: (String studentName){
            getStudentName(studentName);
          },
        )),
         Padding(padding: EdgeInsets.all(16.0),
        child: TextFormField(
          decoration: InputDecoration(labelText: "student id,",
          fillColor: Colors.white,focusedBorder: OutlineInputBorder(borderSide: 
          BorderSide(color: Colors.blue,width: 2.0))),
          onChanged: (String studentID){
            getStudentId(studentID);
          },
        )),
         Padding(padding: EdgeInsets.all(16.0),
        child: TextFormField(
          decoration: InputDecoration(labelText: "program,",
          fillColor: Colors.white,focusedBorder: OutlineInputBorder(borderSide: 
          BorderSide(color: Colors.blue,width: 2.0))),
          onChanged: (String studyProgramID){
            getstudyProgramID(studyProgramID);
          })),
         Padding(padding: EdgeInsets.all(16.0),
        child: TextFormField(
          decoration: InputDecoration(labelText: "cg",
          fillColor: Colors.white,focusedBorder: OutlineInputBorder(borderSide: 
          BorderSide(color: Colors.blue,width: 2.0))),
          onChanged: (String studentGPA){
            getstudentGPA(studentGPA);

          },
        ),),

        Row(
          mainAxisAlignment:MainAxisAlignment.spaceEvenly ,
          children: <Widget>[
            RaisedButton(
              color:Colors.blue,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
              child:Text("Create"),
              textColor: Colors.white,onPressed: (){
                createData();

              },
            ),
             RaisedButton(
              color:Colors.blue,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
              child:Text("Read"),
              textColor: Colors.white,onPressed: (){
                readData();

              },
            ),
             RaisedButton(
              color:Colors.blue,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
              child:Text("Update"),
              textColor: Colors.white,onPressed: (){
                updateData();

              },
            ),
             RaisedButton(
              color:Colors.blue,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
              child:Text("Delete"),
              textColor: Colors.white,onPressed: (){
                deleteData();

              },
            ),
            
            
            
          ],
        )
      ],)


    );

      
    
  }
}