
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:quizapp/Authentication/screens/login/login_widgets/password_field.dart';
import 'package:quizapp/Authentication/screens/login/login_widgets/remember_me_checkbox.dart';
import 'package:quizapp/Authentication/screens/signup/Signup_screen.dart';
import 'package:quizapp/Authentication/screens/signup/Singup_widget/signin_button.dart';
import 'package:quizapp/Authentication/screens/signup/Singup_widget/signup_button.dart';
import 'package:quizapp/Authentication/screens/signup/Singup_widget/text_button.dart';
import 'package:quizapp/Authentication/screens/signup/Singup_widget/text_field.dart';
import 'package:quizapp/model/constants.dart';
import 'package:quizapp/screens/home_screen.dart';
class LoginScreen extends StatefulWidget {
   LoginScreen({super.key});
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}
class _LoginScreenState extends State<LoginScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _rememberMe = false;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  void SignIn() async {
    try {
   final result=   await _auth.signInWithEmailAndPassword(
          email: _emailController.text, password: _passwordController.text);


     Navigator.push(
         context, MaterialPageRoute(builder: (context) => HomeScreen(),));

    }on FirebaseAuthException  catch( e){
      print('login field');
    }

  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
     appBar: AppBar(
       backgroundColor: background,


     ),
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(12),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 249),
              child: CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage("assets/images/Screenshot_2025-03-19_152253[1].png"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 250),
              child: Text("Login",style: TextStyle(color: Colors.blueAccent,fontSize: 20,fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 60),
              child: Text("Welcome back! please enter your detail",style: TextStyle(color: texts),),
            ),
            SizedBox(height: 30,),
            Textfield_widget(nameController: _emailController, labelText: 'Email', hintText: 'Enter your Email'),
          SizedBox(height: 10,),
           PasswordField(controller: _passwordController),
            SizedBox(height: 10,),
            RememberMeCheckbox(
                value: _rememberMe,
                onChanged: (value) {
                  setState(() {
                    _rememberMe = value;
                  });
                },
                ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Text('Sign In',style: TextStyle(color: texts),),
                onPressed: () {
                  print('Button pressed');
                  SignIn();
                },
              ),
            ),

            SizedBox(height: 10,),
            SignInButton(
              btnText: 'Sign in with google',
              btnImage: 'assets/images/google_ic.png',
            ),
            SizedBox(height: 20,),
            NewWidget(title: "Sign Up", subTitle: 'Don,t have an account',onTap: ()=>{
            Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SignUpScreen()),
            )
            },)
           ]
            )
        ),
      )
    );
  }
}
