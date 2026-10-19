import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:kalkulator/components/custom_textfield.dart';
import 'package:kalkulator/routes.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  late TextEditingController txtUsername;
  late TextEditingController txtNamaLengkap;
  late TextEditingController txtEmail;
  late TextEditingController txtNomorWa;

  String? selectedReligion;
  String? selectedGender;

  final List<String> religionList = [
    'Islam',
    'Kristen',
    'Katolik',
    'Hindu',
    'Buddha',
    'Khonghucu',
    'Lainnya'
  ];

  final List<String> genderList = [
    'Laki-laki',
    'Perempuan',
    'Taco',
  ];

  static const Color backgroundColor = Color(0xFFF8FAFC); 
  static const Color primaryTextNavy = Color(0xFF0F172A); 
  static const Color inputBgColor = Color(0xFFFFFFFF);     
  static const Color accentBlue = Color(0xFF2563EB);      

  @override
  void initState() {
    super.initState();
    txtUsername = TextEditingController();
    txtNamaLengkap = TextEditingController();
    txtEmail = TextEditingController();
    txtNomorWa = TextEditingController();
  }

  @override
  void dispose() {
    txtUsername.dispose();
    txtNamaLengkap.dispose();
    txtEmail.dispose();
    txtNomorWa.dispose();
    super.dispose();
  }

  InputDecoration _buildInputDecoration(String labelText, IconData icon) {
    return InputDecoration(
      labelText: labelText,
      labelStyle: const TextStyle(color: primaryTextNavy),
      prefixIcon: Icon(icon, color: primaryTextNavy),
      filled: true,
      fillColor: inputBgColor,
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: primaryTextNavy.withOpacity(0.3)),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(color: accentBlue, width: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        title: const Text(
          "Registration",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: primaryTextNavy,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Buat Akun Baru",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: primaryTextNavy,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              "Silakan isi formulir di bawah ini dengan lengkap.",
              style: TextStyle(color: primaryTextNavy.withOpacity(0.7)),
            ),
            const SizedBox(height: 20),

            CustomTextfield(
              myHint: "Input Username",
              txtController: txtUsername,
            ),
            const SizedBox(height: 16),

            CustomTextfield(
              myHint: "Input Nama Lengkap",
              txtController: txtNamaLengkap,
            ),
            const SizedBox(height: 16),

            TextField(
              controller: txtEmail,
              keyboardType: TextInputType.emailAddress,
              style: const TextStyle(color: primaryTextNavy),
              decoration: _buildInputDecoration("Email", Icons.email_outlined),
            ),
            const SizedBox(height: 16),

            DropdownButtonFormField<String>(
              dropdownColor: inputBgColor,
              style: const TextStyle(color: primaryTextNavy, fontSize: 16),
              decoration: _buildInputDecoration("Religion", Icons.auto_awesome_outlined),
              value: selectedReligion,
              items: religionList.map((String religion) {
                return DropdownMenuItem<String>(
                  value: religion,
                  child: Text(religion),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  selectedReligion = value;
                });
              },
            ),
            const SizedBox(height: 16),

            DropdownButtonFormField<String>(
              dropdownColor: inputBgColor,
              style: const TextStyle(color: primaryTextNavy, fontSize: 16),
              decoration: _buildInputDecoration("Jenis Kelamin", Icons.person_outline),
              value: selectedGender,
              items: genderList.map((String gender) {
                return DropdownMenuItem<String>(
                  value: gender,
                  child: Text(gender),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  selectedGender = value;
                });
              },
            ),
            const SizedBox(height: 16),

            TextField(
              controller: txtNomorWa,
              keyboardType: TextInputType.number,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              style: const TextStyle(color: primaryTextNavy),
              decoration: _buildInputDecoration("Nomor WA (Angka)", Icons.phone_android_outlined),
            ),
            const SizedBox(height: 28),

            SizedBox(
              width: double.infinity,
              height: 52,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: accentBlue,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  elevation: 2,
                ),
                onPressed: () {
                  Get.toNamed(
                    Routes.confirm_registration,
                    arguments: {
                      "username": txtUsername.text,
                      "nama_lengkap": txtNamaLengkap.text,
                      "email": txtEmail.text,
                      "religion": selectedReligion ?? "Belum dipilih",
                      "jenis_kelamin": selectedGender ?? "Belum dipilih",
                      "nomor_wa": txtNomorWa.text,
                    },
                  );
                },
                child: const Text(
                  "SEND DATA",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}