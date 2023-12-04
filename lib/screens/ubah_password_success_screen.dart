import 'package:flutter/material.dart';

class UbahPassSukses extends StatelessWidget {
  const UbahPassSukses({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 167, horizontal: 24),
        child: Center(
          child: Column(
            children: [
              const Text(
                "Password Anda Berhasil Diubah",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                    color: Color(0xff01A7CC)),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 40,
              ),
              Image.asset(
                "assets/icon/ubah-pass.png",
                width: 180,
                height: 180,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 40),
                child: Text(
                  "Silakan login ulang untuk masuk ke akun anda",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: Color(0xff757575)),
                ),
              ),
              SizedBox(
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
                    // Navigator.of(context).pushAndRemoveUntil(
                    //     MaterialPageRoute(
                    //         builder: (context) =>
                    //             const BottomNavigationBarExample()),
                    //     (Route<dynamic> route) => false);
                  },
                  child: const Text(
                    'Selesai',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 12),
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
