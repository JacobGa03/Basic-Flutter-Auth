import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  final String text;
  // What to do when a tap is detected
  final void Function() onTap;
  const ActionButton({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.black, borderRadius: BorderRadius.circular(12)),
        height: 75,
        width: 350,
        child: Center(
          child: Text(
            text,
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
