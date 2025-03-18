import 'package:flutter/material.dart';
import 'package:quizapp/model/constants.dart';

class OptionCard extends StatelessWidget {
  final String option;


  final Color color;
  const OptionCard({super.key,
    required this.option,
    required this.color,
    });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      child: ListTile(
        title: Text(
          option,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 22
          ),
        ),
      ),
    );
  }
}
