import 'package:flutter/material.dart';
import 'package:quizapp/Authentication/screens/signup/signup_screen.dart';
import 'package:quizapp/Authentication/screens/splash_screen/splash_screen.dart';
import 'package:quizapp/model/question_model.dart';
import 'package:quizapp/screens/home_screen.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      darkTheme:ThemeData.dark(),
      home: SplashScreen(),
    );
  }
}

