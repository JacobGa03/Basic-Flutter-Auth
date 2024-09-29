import 'package:flutter/material.dart';

class AuthTile extends StatelessWidget {
  // Detail where the image asset lives
  String imgPath;
  void Function() onTap;
  AuthTile({super.key, required this.imgPath, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 75,
        width: 75,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(12)),
        child: Image.asset(imgPath),
      ),
    );
  }
}
