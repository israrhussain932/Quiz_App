import 'package:flutter/material.dart';

import '../../../../model/constants.dart';

class Textfield_widget extends StatelessWidget {
  final String labelText;
  final String hintText;
  const Textfield_widget({
    super.key,
    required TextEditingController nameController,
    required this.labelText,
    required this.hintText,
  }) : _nameController = nameController;

  final TextEditingController _nameController;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        style: TextStyle(color: texts),
        controller: _nameController,
        decoration: InputDecoration(
            focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                    color: Colors.white)
            ),
            labelText: labelText,
            labelStyle: const TextStyle(color: texts),
            hintText: hintText,
            hintStyle: const TextStyle(color: texts),
            border: const OutlineInputBorder(

            ),
            ),
        );
    }
}