import 'package:flutter/material.dart';

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
                child: Row(
                  children: [
                    Text(
                      "Rp 145.000",
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
