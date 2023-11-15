// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'tiket_saya_screen.dart';

class DetailTiketScreen extends StatelessWidget {
  const DetailTiketScreen({
    Key? key,
    required this.datas,
  }) : super(key: key);

  final TiketModel datas;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text('Detail Tiket'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: const Color(0xffFFF4F2)),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  child: Text(
                    datas.status.toString(),
                    style: const TextStyle(color: Color(0xffCB3A31)),
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Nomor Pesanan",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    datas.pesanan.toString(),
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Tanggal Pembelian",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                      ),
                    ),
                    Text(
                      "${datas.waktu.toString()}, Pukul 09:00 WIB",
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 12,
                      ),
                    )
                  ],
                ),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Expired",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    "-",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              const Divider(
                height: 1,
                color: Color(0xffC2C2C2),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 24, bottom: 16),
                child: Text(
                  "Tiket Kendaraan",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                  ),
                ),
              ),
              Row(
                children: [
                  Image.asset(
                    "assets/images/car.png",
                    width: 24,
                    height: 13,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    datas.mobil.toString(),
                    style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                  )
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(top: 24, bottom: 16),
                child: Text("Tiket Pengunjung"),
              ),
              Row(
                children: [
                  Image.asset(
                    "assets/images/grown.png",
                    width: 24,
                    height: 24,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    datas.dewasa.toString(),
                    style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Image.asset(
                    "assets/images/child.png",
                    width: 24,
                    height: 24,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    datas.anak.toString(),
                    style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              const Divider(
                height: 1,
                color: Color(0xffC2C2C2),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 24, bottom: 16),
                child: Text(
                  "Rincian Pembayaran",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                  ),
                ),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Tiket Kendaraan Mobil",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    "Rp. 15.000",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Tiket Pengunjung Dewasa",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                      ),
                    ),
                    Text(
                      "Rp. 50.000",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Tiket Pengunjung Anak",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    "Rp. 15.000",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(top: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Total Pembayaran",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      "Rp. 95.000",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
