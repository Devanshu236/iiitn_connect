import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/Admission.dart';

class User{
    String id;
    final String name;
    final int enrollement;
    final String date;

    User({
      this.id=' ',
      required this.name,
      required this.enrollement,
      required this.date,

    });

    Map <String,dynamic> toJson()=>{
      'id':id,
      'name':name,
      'enrollment':enrollement,
      'date':date,
    };

    static User fromJson(Map<String ,dynamic> json)=>User(
      id:json['id'],
      name:json['name'],
      enrollement: json['enrollment'],
      date:json['date'],
    );
    }
  

class AddData extends StatefulWidget {
  const AddData({ Key? key }) : super(key: key);

  @override
  State<AddData> createState() => _AddDataState();
}

class _AddDataState extends State<AddData> {
 

  

  final controllerName=TextEditingController();
  final controllerEnrollment=TextEditingController();

  final controllerDate=TextEditingController();

  Stream <List<User>> readUsers()=>
  FirebaseFirestore.instance.collection('user')
  .snapshots().map((snapshot)=>
  snapshot.docs.map((doc)=>User.fromJson(doc.data())).toList());


  Future createUser(User user) async{
    
      final docUser = FirebaseFirestore.instance.collection('user').doc('my-id');
      user.id=docUser.id;
      final json=user.toJson();
      await docUser.set(json);
      


      // await docUser.set(json);
    }
    
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('add user'),
        
      ),
      body:ListView(
        padding:EdgeInsets.all(16),
        children:<Widget> [
          TextField(
            controller: controllerName,
            decoration:InputDecoration(
              labelText: 'Enter Name',
              hintText: 'Enter your name'
            ),
          ),
          const SizedBox(height: 24,),
           TextField(
              controller: controllerEnrollment,
           decoration:InputDecoration(
              labelText: 'Enter Enrollment Number',
              hintText: 'Enter your Enrollment Number'
            ),
            keyboardType: TextInputType.number,
          ),
           const SizedBox(height: 24,),
            TextField(
              controller: controllerDate,
            decoration:InputDecoration(
              labelText: 'Enter Date',
              hintText: 'Enter your Date'
            ),
          ),
          const SizedBox(
            height: 32,
          ),
          ElevatedButton(onPressed:(){
            final user=User(
              name: controllerEnrollment.text,
              enrollement: int.parse(controllerEnrollment.text),
              date:controllerDate.text ,
              

            );
            createUser(user);
            Navigator.pop(context); }, child: Text('Create'),),

            StreamBuilder<List<User>>(
              stream: readUsers(),
              builder: (context,snapshot){
                if(snapshot.hasData){
                  final users=snapshot.data!;
                  
                
                return ListView(
                  children:users.map(buildUser).toList(),

                );
              }
              else{
                return Center(child: CircularProgressIndicator(),);
              }


              },
            )


           
          
        ],
      ),
    );

  
    
    
  }
    Widget buildUser(User user)=> ListTile(
      //leading:CircleAvatar(child: Text(user.enrollement),),
      title:Text(user.name),
      subtitle:Text(user.date),
      );
}