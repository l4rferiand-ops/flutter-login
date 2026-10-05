import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kalkulator/components/controllers/confirm_registration_controller.dart';

class ConfirmRegistrationPage extends StatelessWidget {
  ConfirmRegistrationPage({super.key});

  final controller = Get.put(ConfirmRegistrationController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Confirm Registration")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Obx(() => Text("Username: ${controller.username.value}", style: const TextStyle(fontSize: 16))),
            const SizedBox(height: 8),
            Obx(() => Text("Nama Lengkap: ${controller.namaLengkap.value}", style: const TextStyle(fontSize: 16))),
            const SizedBox(height: 8),
            Obx(() => Text("Email: ${controller.email.value}", style: const TextStyle(fontSize: 16))),
            const SizedBox(height: 8),
            Obx(() => Text("Religion: ${controller.religion.value}", style: const TextStyle(fontSize: 16))),
            const SizedBox(height: 8),
            Obx(() => Text("Jenis Kelamin: ${controller.jenisKelamin.value}", style: const TextStyle(fontSize: 16))),
            const SizedBox(height: 8),
            Obx(() => Text("Nomor WA: ${controller.nomorWa.value}", style: const TextStyle(fontSize: 16))),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Get.back();
              },
              child: const Text("OK / Kembali"),
            ),
          ],
        ),
      ),
    );
  }
}