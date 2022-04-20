
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/signin.dart';




void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
 
  
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
  
          return MaterialApp(
            
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
      home:  SignInPage(),
    );
  }
  
  }



