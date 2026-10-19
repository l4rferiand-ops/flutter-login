import 'package:kalkulator/pages/confirm_registration_pages.dart';
import 'package:kalkulator/pages/registration_pages.dart';
import 'package:kalkulator/pages/list_makanan_page.dart';
import 'package:kalkulator/pages/deskripsi_makanan_page.dart';

import 'package:get/get.dart';

class Routes {
  static const String registration = "/registration";
  static const String confirm_registration = "/confirm_registration";
  static const String list_makanan = "/list_makanan";
  static const String deskripsi_makanan = "/deskripsi_makanan";

  static final myPages = [
    GetPage(name: registration, page: () => RegistrationPage()),
    GetPage(name: confirm_registration, page: () => ConfirmRegistrationPage()),
    GetPage(name: list_makanan, page: () => ListMakananPage()),
    GetPage(
      name: deskripsi_makanan,
      page: () => DeskripsiMakananPage(makanan: Get.arguments),
    ),
  ];
}
