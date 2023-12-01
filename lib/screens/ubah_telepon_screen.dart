import 'package:flutter/material.dart';

import '../widget/global/text_field_global_widget.dart';

class UbahTeleponScreen extends StatelessWidget {
  const UbahTeleponScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text('Ubah Nomor Telepon'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 40,
            ),
            Center(
              child: Image.asset(
                "assets/images/ubah-notelp.png",
                width: 180,
                height: 180,
              ),
            ),
            const SizedBox(
              height: 65,
            ),
            const Center(
              child: Text(
                "Masukkan nomor telepon baru anda",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(24),
              child: TextFieldWidget(
                height: 46,
                title: "Nomor Telepon",
                isValidTextField: true,
                errorMessage: "",
                hintText: "Masukkan No Telepon",
                decoration: InputDecoration(),
              ),
            ),
            const SizedBox(
              height: 16,
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
                    // Navigator.of(context).push(MaterialPageRoute(
                    //     builder: (context) =>
                    //         const BottomNavigationBarExample()));
                  },
                  child: const Text(
                    'Kirim',
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
    );
  }
}
