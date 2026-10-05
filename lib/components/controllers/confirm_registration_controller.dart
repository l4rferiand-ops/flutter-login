import 'package:get/get.dart';

class ConfirmRegistrationController extends GetxController {
  var username = ''.obs;
  var namaLengkap = ''.obs;
  var email = ''.obs;
  var religion = ''.obs;
  var jenisKelamin = ''.obs;
  var nomorWa = ''.obs;

  @override
  void onInit() {
    super.onInit();
    if (Get.arguments != null) {
      username.value = Get.arguments['username'] ?? '';
      namaLengkap.value = Get.arguments['nama_lengkap'] ?? '';
      email.value = Get.arguments['email'] ?? '';
      religion.value = Get.arguments['religion'] ?? '';
      jenisKelamin.value = Get.arguments['jenis_kelamin'] ?? '';
      nomorWa.value = Get.arguments['nomor_wa'] ?? '';
    }
  }
}