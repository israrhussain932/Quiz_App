import 'package:flutter/material.dart';
import 'package:quizapp/screens/home_screen.dart';

import '../../../../model/constants.dart';

class SignupButton extends StatelessWidget {
  const SignupButton({
    super.key,
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomeScreen()),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blueAccent,
              shadowColor: Colors.grey, // Shadow color
              elevation: 5, // Shadow elevation
              shape: RoundedRectangleBorder(
                // Button shape
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: Text(
              title,
              style: TextStyle(color: texts),
            ),
        ),
        );
  }
}
