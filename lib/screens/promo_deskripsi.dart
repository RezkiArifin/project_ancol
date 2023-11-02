// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:tiket_saya/screens/tiket_promo.dart';

class PromoDeskripsi extends StatelessWidget {
  const PromoDeskripsi({
    Key? key,
    required this.promo,
  }) : super(key: key);

  final PromoModel promo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: 250,
            child: Image.asset(
              promo.image!,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 16,
                ),
                Text(
                  promo.label!,
                  style: const TextStyle(
                      color: Color.fromARGB(255, 97, 210, 236),
                      fontSize: 10,
                      fontWeight: FontWeight.w600),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 24),
                  child: Text(
                    promo.date!,
                    style: const TextStyle(
                        color: Color.fromARGB(255, 97, 210, 236),
                        fontSize: 12,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                Text(
                  promo.description!,
                  style: const TextStyle(
                      fontSize: 12, fontWeight: FontWeight.w400),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
