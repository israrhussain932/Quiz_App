import 'package:flutter/material.dart';
import 'package:quizapp/Authentication/screens/login/login_screen.dart';
import 'package:quizapp/model/constants.dart';

class NewWidget extends StatelessWidget {

  const NewWidget({
    super.key,
    required this.title,
    required this.subTitle,
  });
  final String  title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,

      children: [
        Padding(
          padding: const EdgeInsets.only(left: 37),
          child: Text(subTitle,style: TextStyle(color: texts),),
        ),
        TextButton(onPressed: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => LoginScreen()),
          );

        },
            child:Text(title,style: TextStyle(color: Colors.blueAccent,fontWeight: FontWeight.bold,fontSize: 17),) )
      ],
    );
  }
}
