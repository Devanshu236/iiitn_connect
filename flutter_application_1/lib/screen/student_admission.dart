import 'package:flutter_application_1/screen/addStudent.dart';
import 'package:flutter_application_1/utils/colors.dart';
import 'package:flutter/material.dart';
class StudentAdmission extends StatefulWidget {
  const StudentAdmission({ Key? key }) : super(key: key);

  @override
  State<StudentAdmission> createState() => _StudentAdmissionState();
}

class _StudentAdmissionState extends State<StudentAdmission> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         flexibleSpace: Container(
       
        decoration: BoxDecoration(gradient: LinearGradient(colors:[hexStringToColor("#5BB3EE"),
        hexStringToColor("#258EC5"),
        hexStringToColor("#00537F")],begin:Alignment.topCenter,end:Alignment.bottomCenter)),
      ),
        
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Student Admission'),
            
            
            ElevatedButton(
              onPressed: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>AddStudent(),
                  ),
                )
              },
              child: Text('Add', style: TextStyle(fontSize: 16.0,color: Colors.black)),
              style: ElevatedButton.styleFrom(primary: Colors.white),
            )
          ],
        ),
      ),
     
    );
  }
}