import 'package:flutter/material.dart';
import 'package:quizapp/model/constants.dart';

class QuestionWidget extends StatelessWidget {
  const QuestionWidget({super.key,
    required this.question,
    required this.indexAction,
    required this.totalQuestions});
// here we need the questions and total number of question and also the index
  final String question;
  final  int indexAction;
  final int totalQuestions;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      child: Text('Question${indexAction+1}/$totalQuestions:$question',style:  TextStyle(color: texts,fontSize: 24),),

    );
  }
}
