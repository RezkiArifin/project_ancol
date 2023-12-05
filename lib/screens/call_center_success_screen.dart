import 'package:flutter/material.dart';

class CallCenterSuccess extends StatelessWidget {
  const CallCenterSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 167, horizontal: 24),
        child: Center(
          child: Column(
            children: [
              const Text(
                "Berhasil Terkirim",
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
                "assets/images/ubah-pass.png",
                width: 180,
                height: 180,
              ),
              const SizedBox(
                height: 116,
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
                    'Kembali',
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
