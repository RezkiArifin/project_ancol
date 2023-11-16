// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:tiket_saya/widget/riwayat_widget.dart';
import 'package:tiket_saya/widget/tiket_widget.dart';

class TiketSayaScreen extends StatefulWidget {
  const TiketSayaScreen({super.key});

  @override
  State<TiketSayaScreen> createState() => _TiketSayaScreenState();
}

class _TiketSayaScreenState extends State<TiketSayaScreen> {
  int _selectedIndex = 0;

  List<TiketModel> datas = [
    TiketModel(
        pesanan: "Pesanan #20221027001",
        waktu: "27 Oktober 2022",
        mobil: "1 Mobil",
        dewasa: "2 Dewasa",
        anak: "1 Anak",
        total: "Rp. 150.000",
        namaTiket: "Pembelian Tiket",
        pembayaran: "Sudah Bayar",
        status: "Aktif"),
    TiketModel(
        pesanan: "Pesanan #20221027002",
        waktu: "17 November 2022",
        mobil: "1 Mobil",
        dewasa: "3 Dewasa",
        anak: "2 Anak",
        total: "Rp. 250.000",
        namaTiket: "Sea World Ancol",
        pembayaran: "Belum Bayar",
        status: "Aktif"),
    TiketModel(
        pesanan: "Pesanan #20221027003",
        waktu: "31 Desember 2022",
        mobil: "1 Mobil",
        dewasa: "2 Dewasa",
        anak: "3 Anak",
        total: "Rp. 200.000",
        namaTiket: "Pembelian Tiket",
        pembayaran: "Kadaluarsa",
        status: "Dibatalkan"),
  ];

  Widget _buttonBuilder(Widget selectedButton, String title, int myIndex) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = myIndex;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Text(
          title,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: _selectedIndex == myIndex
                ? const Color(0xFF01A7CC)
                : const Color(0xFF1d1d1d),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text('Tiket Saya'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 24),
            child: Image.asset(
              "assets/images/messages-3.png",
              width: 32,
              height: 32,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _buttonBuilder(
                        TiketWidget(
                          datas: datas,
                        ),
                        "Tiket Saya",
                        0),
                    _buttonBuilder(
                        RiwayatScreen(
                          datas: datas,
                        ),
                        "Riwayat Pembayaran",
                        1),
                  ],
                ),
                if (_selectedIndex == 0)
                  TiketWidget(
                    datas: datas,
                  ),
                if (_selectedIndex == 1)
                  RiwayatScreen(
                    datas: datas,
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class TiketModel {
  final String? pesanan;
  final String? waktu;
  final String? mobil;
  final String? dewasa;
  final String? anak;
  final String? total;
  final String? namaTiket;
  final String? pembayaran;
  final String? status;

  TiketModel({
    this.pesanan,
    this.waktu,
    this.mobil,
    this.dewasa,
    this.anak,
    this.total,
    this.namaTiket,
    this.pembayaran,
    this.status,
  });
}
