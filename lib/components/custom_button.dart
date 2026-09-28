import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String myText;
  final VoidCallback myOnPressed;

  const CustomButton({
    super.key,
    required this.myText,
    required this.myOnPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 65,
      height: 55,
      child: ElevatedButton(
        onPressed: myOnPressed,
        child: Text(
          myText,
          style: const TextStyle(
            fontSize: 22,
          ),
        ),
      ),
    );
  }
}