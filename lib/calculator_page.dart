import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'components/controllers/kalkulator_controller.dart';
import 'components/custom_textfield.dart';
import 'components/custom_button.dart';
import 'components/custom_text.dart';

class CalculatorPage extends StatelessWidget {
  CalculatorPage({super.key});

  final KalkulatorController controller = Get.put(KalkulatorController());
  final TextEditingController angka1Controller = TextEditingController();
  final TextEditingController angka2Controller = TextEditingController();

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
            const CustomText(
              myText: "Masukkan Angka Pertama",
              mySize: 18,
            ),
            const SizedBox(height: 10),
            CustomTextfield(
              myHint: "Masukkan angka pertama",
              txtController: angka1Controller,
            ),
            const SizedBox(height: 25),
            const CustomText(
              myText: "Masukkan Angka Kedua",
              mySize: 18,
            ),
            const SizedBox(height: 10),
            CustomTextfield(
              myHint: "Masukkan angka kedua",
              txtController: angka2Controller,
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomButton(
                  myText: "/",
                  myOnPressed: () {
                    controller.bagi(
                      angka1Controller.text,
                      angka2Controller.text,
                    );
                  },
                ),
                CustomButton(
                  myText: "*",
                  myOnPressed: () {
                    controller.kali(
                      angka1Controller.text,
                      angka2Controller.text,
                    );
                  },
                ),
                CustomButton(
                  myText: "-",
                  myOnPressed: () {
                    controller.kurang(
                      angka1Controller.text,
                      angka2Controller.text,
                    );
                  },
                ),
                CustomButton(
                  myText: "+",
                  myOnPressed: () {
                    controller.tambah(
                      angka1Controller.text,
                      angka2Controller.text,
                    );
                  },
                ),
              ],
            ),
            const SizedBox(height: 30),
            Center(
              child: Obx(
                () => CustomText(
                  myText: "Hasil: ${controller.hasilHitung.value}",
                  mySize: 22,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}