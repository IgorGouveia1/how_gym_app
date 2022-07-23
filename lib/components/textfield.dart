import 'package:flutter/material.dart';

class GymTextField extends StatelessWidget {
  final String labeltext;
  const GymTextField({Key? key, required this.labeltext}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          filled: true, fillColor: Colors.white, labelText: labeltext),
    );
  }
}
