import 'package:flutter/material.dart';
import 'package:quizapp/model/constants.dart';

class RememberMeCheckbox extends StatefulWidget {
  final ValueChanged<bool> onChanged;
  final bool value;

  const RememberMeCheckbox({
    super.key,
    required this.onChanged,
    required this.value,
  });

  @override
  State<RememberMeCheckbox> createState() => _RememberMeCheckboxState();
}

class _RememberMeCheckboxState extends State<RememberMeCheckbox> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: widget.value,
          onChanged: (bool? newValue) {
            widget.onChanged(newValue ?? false);
          },
          activeColor: Colors.blueAccent, // Checkbox color
          checkColor: Colors.white, // Checkmark color
        ),
        Text(
          "Remember For 30 days",
          style: TextStyle(
            color: texts,
            fontSize: 13,
          ),
        ),
      ],
    );
  }
}
