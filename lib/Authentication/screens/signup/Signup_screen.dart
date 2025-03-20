import 'package:flutter/material.dart';
import 'package:quizapp/Authentication/screens/signup/Singup_widget/signin_button.dart';
import 'package:quizapp/Authentication/screens/signup/Singup_widget/signup_button.dart';
import 'package:quizapp/Authentication/screens/signup/Singup_widget/text_button.dart';
import 'package:quizapp/Authentication/screens/signup/Singup_widget/text_field.dart';
import '../../../model/constants.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
        backgroundColor: background,
        appBar: AppBar(
          backgroundColor: background,
        ),
        body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.black,
                    radius: 40,
                    backgroundImage: AssetImage(
                      "assets/images/Screenshot_2025-03-19_152253[1].png",
                    ),
                  ),
                  Text(
                    "Sign up",
                    style: TextStyle(
                        color: texts, fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "start your 30_day free trial",
                    style: TextStyle(
                      color: texts,
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  Textfield_widget(
                      nameController: _nameController,
                      labelText: 'Full Name',
                      hintText: 'Enter your first name'),
                  SizedBox(
                    height: 20,
                  ),
                  Textfield_widget(
                      nameController: _emailController,
                      labelText: 'Email',
                      hintText: 'Enter your email'),
                  SizedBox(
                    height: 20,
                  ),
                  Textfield_widget(
                      nameController: _passwordController,
                      labelText: 'password',
                      hintText: 'create a password'),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    ' The password must be at least 8 charchter',
                    style: TextStyle(color: texts, fontSize: 14),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SignupButton(title: 'Sign up'),
                  SizedBox(height: 10,),
                  SignInButton(
                    btnText: 'Sign in with google',
                    btnImage: 'assets/images/google_ic.png',
                    ),
                  SizedBox(height: 15,),
                  NewWidget(title: 'login', subTitle: 'Already have an account?',),
                ],
              ),
              ),
        ),
        );
    }
}


