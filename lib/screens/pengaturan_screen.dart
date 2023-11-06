import 'package:flutter/material.dart';
import 'package:tiket_saya/widget/global/text_field_global_widget.dart';

class PengaturanAkunScreen extends StatelessWidget {
  const PengaturanAkunScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text('Pengaturan Akun'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TextFieldWidget(
                height: 46,
                title: "Nama Lengkap",
                isValidTextField: true,
                errorMessage: "",
                hintText: "John Doe",
                decoration: InputDecoration(),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 24),
                child: TextFieldWidget(
                  height: 46,
                  title: "Alamat Email",
                  isValidTextField: true,
                  errorMessage: "",
                  hintText: "abdullatif@mail.com",
                  decoration: InputDecoration(),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 24),
                child: TextFieldWidget(
                  height: 59,
                  title: "Nomor Telepon",
                  isValidTextField: true,
                  errorMessage: "",
                  hintText: "080000052156",
                  decoration: InputDecoration(),
                ),
              ),
              const TextFieldWidget(
                height: 59,
                title: "Password",
                isValidTextField: true,
                errorMessage: "",
                hintText: "080000052156",
                decoration: InputDecoration(),
                obscureText: true,
              ),
              const SizedBox(
                height: 246,
              ),
              SizedBox(
                height: 42,
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF01A7CC),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                    // padding: const EdgeInsets.symmetric(
                    // horizontal: 145, vertical: 12),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Simpan Perubahan',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
