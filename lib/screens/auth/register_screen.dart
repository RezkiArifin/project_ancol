import 'package:flutter/material.dart';
import 'package:tiket_saya/screens/auth/login_screen.dart';

import '../../widget/global/text_field_global_widget.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: const Text('Daftar'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Center(
                  child: Image.asset(
                    "assets/images/logo-ancol-footer 2.png",
                    width: 150,
                    height: 58,
                  ),
                ),
                const SizedBox(
                  height: 34,
                ),
                const Center(
                  child: Text(
                    "Buat Akun Anda",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 24),
                  child: TextFieldWidget(
                    height: 46,
                    title: "Nama Lengkap",
                    isValidTextField: true,
                    errorMessage: "",
                    hintText: "Masukkan Nama",
                    decoration: InputDecoration(),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 24),
                  child: TextFieldWidget(
                    height: 46,
                    title: "Alamat Email",
                    isValidTextField: true,
                    errorMessage: "",
                    hintText: "Masukkan Email",
                    decoration: InputDecoration(),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 24),
                  child: TextFieldWidget(
                    height: 46,
                    title: "Nomor Telepon",
                    isValidTextField: true,
                    errorMessage: "",
                    hintText: "Masukkan Nomor",
                    decoration: InputDecoration(),
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
                        backgroundColor:
                            const Color.fromARGB(255, 12, 168, 203),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 6),
                      ),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const LoginScreen()));
                      },
                      child: const Text(
                        'Masuk',
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
        ));
  }
}
