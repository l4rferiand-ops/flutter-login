import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  final String myHint;
  final TextEditingController txtController;

  const CustomTextfield({
    super.key,
    required this.myHint,
    required this.txtController,
  });

  @override
  Widget build(BuildContext context) {
    const Color primaryTextNavy = Color(0xFF0F172A);
    const Color accentBlue = Color(0xFF2563EB);

    return TextField(
      controller: txtController,
      style: const TextStyle(color: primaryTextNavy),
      decoration: InputDecoration(
        labelText: myHint,
        labelStyle: const TextStyle(color: primaryTextNavy),
        filled: true,
        fillColor: Colors.white,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: primaryTextNavy.withOpacity(0.3)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: accentBlue, width: 2),
        ),
      ),
    );
  }
}