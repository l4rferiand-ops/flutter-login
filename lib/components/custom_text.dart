import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String myText;
  final double mySize;

  const CustomText({
    super.key,
    required this.myText,
    required this.mySize,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      myText,
      style: TextStyle(
        fontSize: mySize,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}