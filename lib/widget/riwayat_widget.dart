import 'package:flutter/material.dart';

class RiwayatScreen extends StatefulWidget {
  const RiwayatScreen({super.key});

  @override
  State<RiwayatScreen> createState() => _RiwayatScreenState();
}

class _RiwayatScreenState extends State<RiwayatScreen> {
  List riwayat = [
    {
      "jenis": "Pembelian Tiket",
      "waktu": "27 Oktober 2022",
      "total": "Rp. 150.000"
    },
    {
      "jenis": "Sea World Ancol",
      "waktu": "27 Oktober 2022",
      "total": "Rp. 100.000"
    },
    {
      "jenis": "Pembelian Tiket",
      "waktu": "27 Oktober 2022",
      "total": "Rp. 150.000"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: Padding(
            padding: const EdgeInsets.only(right: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: const Color(0xFFE8FAFB),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                        child: Text(
                          "Semua",
                          style: TextStyle(
                            color: Color(0xFF01A7CC),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Image.asset(
                        "assets/images/arrow-down.png",
                        width: 16,
                        height: 16,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Wrap(
          children: List.generate(
            riwayat.length,
            (index) => Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 24),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(riwayat[index]["jenis"]),
                                const SizedBox(
                                  height: 8,
                                ),
                                Text(riwayat[index]["waktu"],
                                    style: const TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400))
                              ],
                            ),
                            Column(
                              children: [
                                const Text(
                                  "Total Pembayaran",
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400),
                                ),
                                Text(riwayat[index]["total"],
                                    style: const TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600)),
                              ],
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: const Color(0xFFE8FAFB),
                        ),
                        child: const Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                          child: Text(
                            "Sudah Bayar",
                            style: TextStyle(
                              color: Color(0xFF01A7CC),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                    ],
                  ),
                ),
                if (riwayat.length > 1)
                  Divider(
                    color: Colors.grey[300],
                    height: 1,
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
