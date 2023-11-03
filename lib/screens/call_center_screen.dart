import 'package:flutter/material.dart';

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
                width: 327,
                height: 350,
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
                        const TextField(
                          decoration: InputDecoration(
                            labelText: "Nama Lengkap",
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            hintText: "Masukkan Nama",
                            hintStyle: TextStyle(fontSize: 16),
                            // fillColor: Color(0xFFE7E0EC),
                            // filled: true,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 24),
                          child: TextField(
                            decoration: InputDecoration(
                              labelText: "Alamat Email",
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.always,
                              hintText: "Masukkan Email",
                              hintStyle: TextStyle(fontSize: 16),
                              // fillColor: Color(0xFFE7E0EC),
                              // filled: true,
                            ),
                          ),
                        ),
                        const TextField(
                          decoration: InputDecoration(
                            labelText: "Masalah",
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            hintText: "Tuliskan Masalahmu",
                            hintStyle: TextStyle(fontSize: 16),
                            // fillColor: Color(0xFFE7E0EC),
                            // filled: true,
                          ),
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF01A7CC),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6),
                            ),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 130, vertical: 12),
                          ),
                          onPressed: () {},
                          child: const Text(
                            'Kirim',
                            style: TextStyle(color: Colors.white),
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
