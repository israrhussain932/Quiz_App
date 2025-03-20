import 'package:flutter/material.dart';
class SignInButton extends StatelessWidget {
  final String btnText;
  final String btnImage;
  const SignInButton({
    super.key,
    required this.btnText,
    required this.btnImage,

  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        child: ElevatedButton(
            onPressed: () {
              print('Google Sign-In Clicked');
            },
            style: ElevatedButton.styleFrom(

              foregroundColor: Colors.black,
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                 btnImage,
                  height: 24,
                  width: 24,
                ),
                SizedBox(width: 10),
                Text(
                  btnText,
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
            ),
        );
    }
}
