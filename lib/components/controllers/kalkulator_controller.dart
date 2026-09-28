import 'package:get/get.dart';

class KalkulatorController extends GetxController {
  var hasilHitung = 0.0.obs;

  // Validasi input
  bool _validateInputs(String angka1Str, String angka2Str) {
    if (angka1Str.trim().isEmpty || angka2Str.trim().isEmpty) {
      Get.snackbar(
        "Warning",
        "Angka 1 dan Angka 2 tidak boleh kosong!",
        snackPosition: SnackPosition.BOTTOM,
      );
      return false;
    }
    return true;
  }

  // Method Tambah
  void tambah(String angka1Str, String angka2Str) {
    if (!_validateInputs(angka1Str, angka2Str)) return;

    double angka1 = double.tryParse(angka1Str) ?? 0.0;
    double angka2 = double.tryParse(angka2Str) ?? 0.0;

    double hasilTambah = angka1 + angka2;
    hasilHitung.value = hasilTambah;

    Get.snackbar(
      "Hasil Tambah",
      "Hasil nya: $hasilTambah",
      snackPosition: SnackPosition.BOTTOM,
    );
  }

  // Method Kurang
  void kurang(String angka1Str, String angka2Str) {
    if (!_validateInputs(angka1Str, angka2Str)) return;

    double angka1 = double.tryParse(angka1Str) ?? 0.0;
    double angka2 = double.tryParse(angka2Str) ?? 0.0;

    double hasilKurang = angka1 - angka2;
    hasilHitung.value = hasilKurang;

    Get.snackbar(
      "Hasil Kurang",
      "Hasil nya: $hasilKurang",
      snackPosition: SnackPosition.BOTTOM,
    );
  }

  // Method Kali
  void kali(String angka1Str, String angka2Str) {
    if (!_validateInputs(angka1Str, angka2Str)) return;

    double angka1 = double.tryParse(angka1Str) ?? 0.0;
    double angka2 = double.tryParse(angka2Str) ?? 0.0;

    double hasilKali = angka1 * angka2;
    hasilHitung.value = hasilKali;

    Get.snackbar(
      "Hasil Kali",
      "Hasil nya: $hasilKali",
      snackPosition: SnackPosition.BOTTOM,
    );
  }

  // Method Bagi
  void bagi(String angka1Str, String angka2Str) {
    if (!_validateInputs(angka1Str, angka2Str)) return;

    double angka1 = double.tryParse(angka1Str) ?? 0.0;
    double angka2 = double.tryParse(angka2Str) ?? 0.0;

    if (angka2 == 0) {
      Get.snackbar(
        "Warning",
        "Pembagian dengan angka 0 tidak diperbolehkan!",
        snackPosition: SnackPosition.BOTTOM,
      );
      return;
    }

    double hasilBagi = angka1 / angka2;
    hasilHitung.value = hasilBagi;

    Get.snackbar(
      "Hasil Bagi",
      "Hasil nya: $hasilBagi",
      snackPosition: SnackPosition.BOTTOM,
    );
  }
}