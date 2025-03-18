import 'package:flutter/material.dart';
import 'package:quizapp/model/constants.dart';

class ResultBox extends StatelessWidget {
  final int result;
  final int questionLength;
  final VoidCallback onPressed;



  const ResultBox(
      {super.key, required this.result, required this.questionLength,
        required this.onPressed,
        });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: background,
      content: Padding(
        padding: EdgeInsets.all(60),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Result",
              style: TextStyle(color: texts, fontSize: 22),
            ),
            SizedBox(
              height: 20,
            ),
            CircleAvatar(
                child: Text(
                  '$result/$questionLength',
                  style: TextStyle(fontSize: 30),
                ),
                radius: 70,
                backgroundColor: result == questionLength / 2
                    ? Colors.yellow // when the result is half of the question
                    : result < questionLength / 2
                        ? incorrect // when the  result is less than half
                        : correct, // when the result is more than half
            ),
            SizedBox(
              height: 20,),
            Text(
              result == questionLength / 2
                  ? 'Almost there'
                  : result < questionLength / 2
                  ?  'Try again?'  // when the  result is less than half
                  : 'Great!',
              style: TextStyle(color: texts),

            ),
            SizedBox(height: 25),
            GestureDetector(
              onTap: onPressed,
              child: Text("Start over",style: TextStyle(color: Colors.blue,fontSize: 20,
                letterSpacing: 1.0,
              ),),
            )
          ],
        ),
      ),
    );
  }
}
