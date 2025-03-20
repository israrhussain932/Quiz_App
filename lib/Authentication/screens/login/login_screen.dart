import 'package:flutter/material.dart';
import 'package:quizapp/Authentication/screens/login/login_widgets/password_field.dart';
import 'package:quizapp/Authentication/screens/login/login_widgets/remember_me_checkbox.dart';
import 'package:quizapp/Authentication/screens/signup/Singup_widget/signin_button.dart';
import 'package:quizapp/Authentication/screens/signup/Singup_widget/signup_button.dart';
import 'package:quizapp/Authentication/screens/signup/Singup_widget/text_button.dart';
import 'package:quizapp/Authentication/screens/signup/Singup_widget/text_field.dart';
import 'package:quizapp/model/constants.dart';

class LoginScreen extends StatefulWidget {
   LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _rememberMe = false;



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
            SignupButton(title: 'Sign in'),
            SizedBox(height: 10,),
            SignInButton(
              btnText: 'Sign in with google',
              btnImage: 'assets/images/google_ic.png',
            ),
            SizedBox(height: 20,),
            NewWidget(title: "Sign in", subTitle: 'Don,t have an account')
           ]
            )
        ),
      )
    );
  }
}
