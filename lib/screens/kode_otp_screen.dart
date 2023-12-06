import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

class KodeOtpScreen extends StatelessWidget {
  const KodeOtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text('Kode OTP'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 25),
                child: Text(
                  "Verifikasi Nomor Telepon Anda",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                ),
              ),
              const Text(
                "Masukkan 4 digit angka yang dikirimkan ke nomor\n0800000000 melalui SMS",
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12),
                textAlign: TextAlign.center,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: OTPTextField(
                  length: 4,
                  width: MediaQuery.of(context).size.width,
                  fieldWidth: 80,
                  style: const TextStyle(fontSize: 17),
                  textFieldAlignment: MainAxisAlignment.spaceEvenly,
                  fieldStyle: FieldStyle.underline,
                ),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Tidak menerima kode?",
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12),
                  ),
                  Text(
                    "Kirim Ulang",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 12,
                        color: Color(0xff01A7CC)),
                  )
                ],
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 16),
                child: Text(
                  "Pastikan pulsa anda cukup untuk dapat menerima SMS\nverifikasi (OTP)",
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12),
                  textAlign: TextAlign.center,
                ),
              ),
              const Text(
                "Nomor telepon salah",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                    color: Color(0xff01A7CC)),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 38),
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
                      //     builder: (context) => const KodeOtpScreen()));
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
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Dengan mendaftar anda telah menyetujui",
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 10),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    "Syarat & Ketentuan",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 10,
                        color: Color(0xff01A7CC)),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    "dan",
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 10),
                  ),
                ],
              ),
              const Text(
                "Kebijakan Privasi",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Color(0xff01A7CC),
                    fontSize: 10),
              )
            ],
          ),
        ),
      ),
    );
  }
}
