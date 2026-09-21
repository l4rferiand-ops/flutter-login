import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CalculatorPage extends StatelessWidget {
  const CalculatorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MyCalculator"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Masukkan Angka Pertama",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            TextField(
              keyboardType: TextInputType.number,
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
              ],
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Masukkan angka pertama",
              ),
            ),

            const SizedBox(height: 25),

            const Text(
              "Masukkan Angka Kedua",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            TextField(
              keyboardType: TextInputType.number,
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
              ],
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Masukkan angka kedua",
              ),
            ),

            const SizedBox(height: 30),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                tombol("/"),
                tombol("*"),
                tombol("-"),
                tombol("+"),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget tombol(String text) {
    return SizedBox(
      width: 65,
      height: 55,
      child: ElevatedButton(
        onPressed: () {},
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 22,
          ),
        ),
      ),
    );
  }
}