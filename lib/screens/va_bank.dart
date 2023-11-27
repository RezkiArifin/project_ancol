import 'package:flutter/material.dart';

import '../main.dart';

class VaBankScreen extends StatelessWidget {
  const VaBankScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Pembayaran",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
              ),
              const SizedBox(
                height: 28,
              ),
              const Text(
                "Pembayaran pesanan #20221027001",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
              ),
              const SizedBox(
                height: 24,
              ),
              Row(
                children: [
                  Image.asset(
                    "assets/images/bank-dki_images.png",
                    width: 100,
                    height: 34,
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Bank DKI"),
                      SizedBox(
                        height: 4,
                      ),
                      Text("Ancol Jakarta")
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              const Text(
                "Total Pembayaran",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
              ),
              const SizedBox(
                height: 8,
              ),
              Container(
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: const Color(0xffF4F4F4),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Rp 145.000",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 20),
                      ),
                      SizedBox(
                        width: 56,
                        height: 31,
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
                            // Navigator.of(context).pushAndRemoveUntil(
                            //     MaterialPageRoute(
                            //         builder: (context) =>
                            //             const BottomNavigationBarExample()),
                            //     (Route<dynamic> route) => false);
                          },
                          child: const Text(
                            'Salin',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 10),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 24),
                child: Text(
                  "Bayar sebelum 27 Oktober 2022, 18:00 WIB",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
                ),
              ),
              const Text(
                "Mohon transfer ke nomor virtual account dibawah ini",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 10),
              ),
              const SizedBox(
                height: 8,
              ),
              Container(
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: const Color(0xffF4F4F4),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "012345678",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 20),
                      ),
                      SizedBox(
                        width: 56,
                        height: 31,
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
                            // Navigator.of(context).pushAndRemoveUntil(
                            //     MaterialPageRoute(
                            //         builder: (context) =>
                            //             const BottomNavigationBarExample()),
                            //     (Route<dynamic> route) => false);
                          },
                          child: const Text(
                            'Salin',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 10),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 24),
                child: Text(
                  "Ikuti instruksi pembayaran dibawah ini",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 10),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("ATM Bank DKI",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 12)),
                    Image.asset(
                      "assets/icon/arrow-down_icon.png",
                      width: 16,
                      height: 16,
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Mobile Banking Bank DKI",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 12)),
                    Image.asset(
                      "assets/icon/arrow-down_icon.png",
                      width: 16,
                      height: 16,
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Internet Banking Bank DKI",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 12)),
                    Image.asset(
                      "assets/icon/arrow-down_icon.png",
                      width: 16,
                      height: 16,
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
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
                    'Periksa Status Transaksi',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 12),
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              SizedBox(
                width: double.infinity,
                height: 42,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6),
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 6),
                      side: const BorderSide(
                        color: Color.fromARGB(255, 12, 168, 203),
                      )),
                  onPressed: () {
                    Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(
                            builder: (context) =>
                                const BottomNavigationBarExample()),
                        (Route<dynamic> route) => false);
                  },
                  child: const Text(
                    'Kembali ke Beranda',
                    style: TextStyle(
                        color: Color.fromARGB(255, 12, 168, 203),
                        fontWeight: FontWeight.w600,
                        fontSize: 12),
                  ),
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
