
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quizapp/Authentication/screens/signup/Signup_screen.dart';
import 'package:quizapp/model/constants.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => SignUpScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF03055C),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            Padding(
              padding: const EdgeInsets.only(left: 57),
              child: CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage(
                    "assets/images/Screenshot_2025-03-19_152253[1].png"),

              ),
            ),

            SizedBox(height: 20),
            Text(
              "WELCOME TO BRAINLY!......",
              style: TextStyle(
                  color: texts, fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              "Have courage and move on..",
              style: TextStyle(
                  color: texts,
                  fontSize: 17,
                  fontWeight: FontWeight.w300),
            ),
            Text(
              "you can do it ..",
              style: TextStyle(
                  color: texts,
                  fontSize: 17,
                  fontWeight: FontWeight.w300),
            ),
            SizedBox(height: 15,),
            CircularProgressIndicator(
              strokeWidth: 5,
              color: Colors.white,
            ),
            SizedBox(height: 50),

          ],
        ),
      ),
    );
  }
}

