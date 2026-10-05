import 'package:kalkulator/pages/confirm_registration_pages.dart';
import 'package:kalkulator/pages/registration_pages.dart';

import 'package:get/get.dart';

class Routes {
  static const String registration = "/registration";
  static const String confirm_registration = "/confirm_registration";

  static final myPages = [
    GetPage(
      name: registration,
      page: () => RegistrationPage(),
    ),
    GetPage(
      name: confirm_registration,
      page: () => ConfirmRegistrationPage(),
    ),
  ];
}