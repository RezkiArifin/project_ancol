import 'package:flutter/material.dart';
import 'package:tiket_saya/screens/ubah_password_success_screen.dart';

import '../widget/global/text_field_global_widget.dart';

class UbahPassScreen extends StatelessWidget {
  const UbahPassScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text('Ubah Password'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 40,
              ),
              Center(
                child: Image.asset(
                  "assets/images/ubah-pass.png",
                  width: 180,
                  height: 180,
                ),
              ),
              const SizedBox(
                height: 65,
              ),
              const Center(
                child: Text(
                  "Masukkan password baru anda",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 24),
                child: TextFieldWidget(
                  height: 46,
                  title: "Password",
                  isValidTextField: true,
                  errorMessage: "",
                  hintText: "Masukkan Password",
                  suffixIconWidget: Icon(Icons.remove_red_eye),
                  decoration: InputDecoration(),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 24),
                child: TextFieldWidget(
                  height: 46,
                  title: "Konfirmasi Password",
                  isValidTextField: true,
                  errorMessage: "",
                  hintText: "Masukkan Password",
                  suffixIconWidget: Icon(Icons.remove_red_eye),
                  decoration: InputDecoration(),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: SizedBox(
                  width: double.infinity,
                  height: 42,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 12, 168, 203),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6),
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 6),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const UbahPassSukses()));
                    },
                    child: const Text(
                      'Ubah Password',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 12),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
