import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  // Tell the user what to enter
  final String hintText;
  // Give us the ability to grab text from within the field
  final TextEditingController tec;
  // If it is a password, we don't want to show the text being typed
  final bool obscureText;
  const CustomTextField(
      {super.key,
      required this.hintText,
      required this.tec,
      required this.obscureText});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 350,
      child: TextField(
        controller: tec,
        obscureText: obscureText,
        decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            border: const OutlineInputBorder(),
            hintText: hintText),
      ),
    );
  }
}
