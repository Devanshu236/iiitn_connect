
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/signin.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;




Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(
       apiKey: "AIzaSyDxIl_v-k47Ziq0ALlBDnbCxkOfVgIjBI8",
       authDomain: "iiitn-ok.firebaseapp.com",
       projectId: "iiitn-ok",
       storageBucket: "iiitn-ok.appspot.com",
       messagingSenderId: "441182479118",
       appId: "1:441182479118:android:40b40215b6433fb1f5ed5f"),
  );
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  firebase_auth.FirebaseAuth firebaseAuth=firebase_auth.FirebaseAuth.instance;
 
  
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



