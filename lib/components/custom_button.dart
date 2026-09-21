import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  // Variabel yang diperlukan
  final String myText;
  final VoidCallback myOnPressed;

  const CustomButton({
    super.key,
    required this.myText,
    required this.myOnPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: myOnPressed,
      child: Text(
        myText,
        style: const TextStyle(
          fontSize: 18,
        ),
      ),
    );
  }
}