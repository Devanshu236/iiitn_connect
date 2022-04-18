import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/signup.dart';
import 'package:flutter_application_1/utils/colors.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({ Key? key }) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController _passwordTextController=TextEditingController();
  TextEditingController _emailTextController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      
      body:Container(
        
         decoration: BoxDecoration(gradient: LinearGradient(colors:[hexStringToColor("#5BB3EE"),
        hexStringToColor("#258EC5"),
        hexStringToColor("#00537F")],begin:Alignment.topCenter,end:Alignment.bottomCenter)),
        child: SingleChildScrollView(
          child: Padding(
            
            padding: EdgeInsets.fromLTRB(
                10, MediaQuery.of(context).size.height * 0.2, 0, 0),
                
                 child: Column(
              children: <Widget>[
                logoWidget("assets/images/logo.png"),
                SizedBox(
                  height: 0.1,


                ),
                reusableTextField("Enter username", Icons.person_outline,false,  _emailTextController),
                 SizedBox(
                  height: 10,


                ),
                reusableTextField("Enter Password", Icons.lock,true,  _passwordTextController),

                SizedBox(
                  height: 20,
                ),

                signInButton(context, "SignIn", () {}),
                signUpOption()






              ],

                
                ),


        


      
        ))));
  }
  Image logoWidget(String imageName){
    return Image.asset(
      imageName,
      
      width: 648,
      height: 546,
      color: Colors.blue,
    );
  }
  TextField reusableTextField(String text,IconData icon,bool isPasswordType,
  TextEditingController controller){
    return TextField(controller: controller,
    obscureText: isPasswordType,
    enableSuggestions: !isPasswordType,
     autocorrect: !isPasswordType,
    cursorColor: Colors.white,
    style: TextStyle(color: Colors.white.withOpacity(0.9)),
    decoration: InputDecoration(
      prefixIcon: Icon(
        icon,
        color: Colors.white70,
      ),
      labelText: text,
      labelStyle: TextStyle(color: Colors.white.withOpacity(0.9)),
      filled: true,
      floatingLabelBehavior: FloatingLabelBehavior.never,
      fillColor: Colors.white.withOpacity(0.3),
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: const BorderSide(width: 0, style: BorderStyle.none)),
    ),
    keyboardType: isPasswordType
        ? TextInputType.visiblePassword
        : TextInputType.emailAddress,
    );
    
    
  }
  Container signInButton(BuildContext context, String title, Function onTap) {
  return Container(
    width: MediaQuery.of(context).size.width,
    height: 50,
    margin: const EdgeInsets.fromLTRB(0, 10, 0, 20),
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(90)),
    child: ElevatedButton(
      onPressed: () {
         onTap();
      },
      child: Text(
        title,
        style: const TextStyle(
            color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 16),
      ),
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.pressed)) {
              return Colors.black26;
            }
            return Colors.white;
          }),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)))),
    ),
  );
}

Row signUpOption() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Don't have account?",
            style: TextStyle(color: Colors.white70)),
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => SignUpScreen()));
          },
          child: const Text(
            " Sign Up",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }



}