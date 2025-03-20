import 'package:flutter/material.dart';
import 'package:quizapp/model/constants.dart';

class PasswordField extends StatefulWidget {
  final TextEditingController controller;
  const PasswordField({super.key, required this.controller});
  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool _isPasswordVisible = false;
  @override
  Widget build(BuildContext context) {
    return TextField(
        style: TextStyle(color: texts),
        controller: widget.controller,
        obscureText: !_isPasswordVisible,
        decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
            labelText: "Password",
            labelStyle: TextStyle(color: texts),
            hintText: 'Enter your password',
            hintStyle: TextStyle(color: texts),
            border: OutlineInputBorder(),
            suffixIcon: IconButton(
              icon: Icon(
                _isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                color: texts,
              ),
              onPressed: () {
                setState(() {
                  _isPasswordVisible = !_isPasswordVisible;
                });
              },
            ),
            ),
        );
    }
}