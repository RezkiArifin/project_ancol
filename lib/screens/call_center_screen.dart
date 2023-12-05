import 'package:flutter/material.dart';
import 'package:tiket_saya/widget/global/text_field_global_widget.dart';

import 'call_center_success_screen.dart';

class CallCenterScreen extends StatelessWidget {
  const CallCenterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 97, 210, 236),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text('Hubungi Kami'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: double.infinity,
                height: 400,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const TextFieldWidget(
                            height: 46,
                            title: "Nama Lengkap",
                            isValidTextField: true,
                            errorMessage: "",
                            hintText: "Masukkan Namamu",
                            decoration: InputDecoration()),
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 24),
                          child: TextFieldWidget(
                              height: 46,
                              title: "Alamat Email",
                              isValidTextField: true,
                              errorMessage: "",
                              hintText: "Masukkan Emailmu",
                              decoration: InputDecoration()),
                        ),
                        const TextFieldWidget(
                            height: 82,
                            title: "Masalah",
                            isValidTextField: true,
                            errorMessage: "",
                            hintText: "Tuliskan Masalahmu",
                            decoration: InputDecoration()),
                        const SizedBox(
                          height: 24,
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
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const CallCenterSuccess(),
                                ),
                              );
                            },
                            child: const Text(
                              'Kirim',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        )
                      ],
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
