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
                    _buttonBuilder(const TiketWidget(), "Tiket Saya", 0),
                    _buttonBuilder(
                        const RiwayatScreen(), "Riwayat Pembayaran", 1),
                  ],
                ),
                if (_selectedIndex == 0) const TiketWidget(),
                if (_selectedIndex == 1) const RiwayatScreen(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
