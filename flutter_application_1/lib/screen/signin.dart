// import 'package:flutter/material.dart';
// import 'package:flutter_application_1/screen/signup.dart';
// import 'package:flutter_application_1/utils/colors.dart';

// class SignInScreen extends StatefulWidget {
//   const SignInScreen({ Key? key }) : super(key: key);

//   @override
//   State<SignInScreen> createState() => _SignInScreenState();
// }

// class _SignInScreenState extends State<SignInScreen> {
//   TextEditingController _passwordTextController=TextEditingController();
//   TextEditingController _emailTextController=TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
      
      
//       body:Container(
        
//          decoration: BoxDecoration(gradient: LinearGradient(colors:[hexStringToColor("#5BB3EE"),
//         hexStringToColor("#258EC5"),
//         hexStringToColor("#00537F")],begin:Alignment.topCenter,end:Alignment.bottomCenter)),
//         child: SingleChildScrollView(
//           child: Padding(
            
//             padding: EdgeInsets.fromLTRB(
//                 10, MediaQuery.of(context).size.height * 0.2, 0, 0),
                
//                  child: Column(
//               children: <Widget>[
//                 logoWidget("assets/images/logo.png"),
//                 SizedBox(
//                   height: 0.1,


//                 ),
//                 reusableTextField("Enter username", Icons.person_outline,false,  _emailTextController),
//                  SizedBox(
//                   height: 10,


//                 ),
//                 reusableTextField("Enter Password", Icons.lock,true,  _passwordTextController),

//                 SizedBox(
//                   height: 20,
//                 ),

//                 signInButton(context, "SignIn", () {}),
//                 signUpOption()






//               ],

                
//                 ),


        


      
//         ))));
//   }
//   Image logoWidget(String imageName){
//     return Image.asset(
//       imageName,
      
//       width: 648,
//       height: 546,
//       color: Colors.blue,
//     );
//   }
//   TextField reusableTextField(String text,IconData icon,bool isPasswordType,
//   TextEditingController controller){
//     return TextField(controller: controller,
//     obscureText: isPasswordType,
//     enableSuggestions: !isPasswordType,
//      autocorrect: !isPasswordType,
//     cursorColor: Colors.white,
//     style: TextStyle(color: Colors.white.withOpacity(0.9)),
//     decoration: InputDecoration(
//       prefixIcon: Icon(
//         icon,
//         color: Colors.white70,
//       ),
//       labelText: text,
//       labelStyle: TextStyle(color: Colors.white.withOpacity(0.9)),
//       filled: true,
//       floatingLabelBehavior: FloatingLabelBehavior.never,
//       fillColor: Colors.white.withOpacity(0.3),
//       border: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(30.0),
//           borderSide: const BorderSide(width: 0, style: BorderStyle.none)),
//     ),
//     keyboardType: isPasswordType
//         ? TextInputType.visiblePassword
//         : TextInputType.emailAddress,
//     );
    
    
//   }
//   Container signInButton(BuildContext context, String title, Function onTap) {
//   return Container(
//     width: MediaQuery.of(context).size.width,
//     height: 50,
//     margin: const EdgeInsets.fromLTRB(0, 10, 0, 20),
//     decoration: BoxDecoration(borderRadius: BorderRadius.circular(90)),
//     child: ElevatedButton(
//       onPressed: () {
//          onTap();
//       },
//       child: Text(
//         title,
//         style: const TextStyle(
//             color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 16),
//       ),
//       style: ButtonStyle(
//           backgroundColor: MaterialStateProperty.resolveWith((states) {
//             if (states.contains(MaterialState.pressed)) {
//               return Colors.black26;
//             }
//             return Colors.white;
//           }),
//           shape: MaterialStateProperty.all<RoundedRectangleBorder>(
//               RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)))),
//     ),
//   );
// }

// Row signUpOption() {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         const Text("Don't have account?",
//             style: TextStyle(color: Colors.white70)),
//         GestureDetector(
//           onTap: () {
//             Navigator.push(context,
//                 MaterialPageRoute(builder: (context) => SignUpScreen()));
//           },
//           child: const Text(
//             " Sign Up",
//             style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
//           ),
//         )
//       ],
//     );
//   }



// }


//import 'package:firebase_app_web/Service/Auth_Service.dart';
//import 'package:firebase_app_web/pages/SignUpPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/homescreen.dart';
import 'package:flutter_application_1/screen/signup.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:flutter_application_1/utils/colors.dart';

import 'HomePage.dart';

class SignInPage extends StatefulWidget {
  SignInPage({Key ?key}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  firebase_auth.FirebaseAuth firebaseAuth = firebase_auth.FirebaseAuth.instance;
  TextEditingController _emailController = TextEditingController();
  TextEditingController _pwdController = TextEditingController();
  bool circular = false;
  //AuthClass authClass = AuthClass();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(gradient: LinearGradient(colors:[hexStringToColor("#5BB3EE"),
        hexStringToColor("#258EC5"),
        hexStringToColor("#00537F")],begin:Alignment.topCenter,end:Alignment.bottomCenter)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Sign In",
                style: TextStyle(
                  fontSize: 35,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              // SizedBox(
              //   height: 20,
              // ),
              // buttonItem("assets/google.svg", "Continue with Google", 25, () {
              //   authClass.googleSignIn(context);
              // }),
              // SizedBox(
              //   height: 15,
              // ),
              // buttonItem("assets/phone.svg", "Continue with Mobile", 30, () {}),
              // SizedBox(
              //   height: 18,
              // ),
              // Text(
              //   "Or",
              //   style: TextStyle(color: Colors.white, fontSize: 18),
              // ),
              SizedBox(
                height: 18,
              ),
              textItem("Email....", _emailController, false),
              SizedBox(
                height: 15,
              ),
              textItem("Password...", _pwdController, true),
              SizedBox(
                height: 40,
              ),
              colorButton(),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "If you don't have an Account? ",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(builder: (builder) => SignUpScreen()),
                          (route) => false);
                    },
                    child: Text(
                      "SignUp",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Forgot Password?",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget colorButton() {
    return InkWell(
      onTap: () async {
        setState(() {
          circular:true;
        });

        try{
        firebase_auth.UserCredential userCredential=await firebaseAuth.createUserWithEmailAndPassword(email:_emailController.text , password: _pwdController.text);
          setState(() {
          circular:false;
        });
          Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomeScreen()));
        }
        catch(e){
          final snackBar=SnackBar(content: Text(e.toString()));
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
            setState(() {
          circular:false;
        });

        }
      },
      
      child: Container(
        width: MediaQuery.of(context).size.width - 100,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(colors: [
            Color.fromARGB(255, 255, 254, 254),
            Color.fromARGB(255, 221, 221, 221),
            Color.fromARGB(255, 221, 221, 221)
          ]),
        ),
        child: Center(
          child: circular
              ? CircularProgressIndicator()
              : Text(
                  "Sign In",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
        ),
      ),
    );
  }

  Widget buttonItem(
      String imagepath, String buttonName, double size,VoidCallback Function() onTap) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width - 60,
        height: 60,
        child: Card(
          color: Colors.black,
          elevation: 8,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
            side: BorderSide(
              width: 1,
              color: Colors.grey,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                imagepath,
                height: size,
                width: size,
              ),
              SizedBox(
                width: 15,
              ),
              Text(
                buttonName,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget textItem(
      String labeltext, TextEditingController controller, bool obscureText) {
    return Container(
      width: MediaQuery.of(context).size.width - 70,
      height: 55,
      child: TextFormField(
        controller: controller,
        obscureText: obscureText,
        style: TextStyle(
          fontSize: 17,
          color: Colors.white,
        ),
        decoration: InputDecoration(
          labelText: labeltext,
          labelStyle: TextStyle(
            fontSize: 17,
            color: Colors.white,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(
              width: 1.5,
              color: Colors.amber,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(
              width: 1,
              color: Colors.grey,
            ),
          ),
        ),
      ),
    );
  }
}