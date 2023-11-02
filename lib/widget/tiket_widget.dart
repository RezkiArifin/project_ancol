import 'package:flutter/material.dart';

class TiketWidget extends StatefulWidget {
  const TiketWidget({super.key});

  @override
  State<TiketWidget> createState() => _TiketWidgetState();
}

class _TiketWidgetState extends State<TiketWidget> {
  List datas = [
    {
      "Pesanan": "Pesanan #20221027001",
      "waktu": "27 Oktober 2022",
      "mobil": "1 Mobil",
      "dewasa": "2 Dewasa",
      "anak": "1 Anak",
      "total": "Rp. 150.000"
    },
    {
      "Pesanan": "Pesanan #20221027002",
      "waktu": "17 November 2022",
      "mobil": "1 Mobil",
      "dewasa": "3 Dewasa",
      "anak": "2 Anak",
      "total": "Rp. 250.000"
    },
    {
      "Pesanan": "Pesanan #20221027003",
      "waktu": "31 Desember 2022",
      "mobil": "1 Mobil",
      "dewasa": "2 Dewasa",
      "anak": "3 Anak",
      "total": "Rp. 200.000"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24),
      child: Stack(
        children: <Widget>[
          Wrap(
            children: List.generate(
              datas.length,
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
                              Text(datas[index]["Pesanan"].toString()),
                              Text(datas[index]["waktu"].toString())
                            ],
                          ),
                        ),
                        const SizedBox(height: 24),
                        Row(
                          children: [
                            Image.asset(
                              "assets/images/car.png",
                              width: 24,
                              height: 24,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Text(datas[index]["mobil"].toString()),
                            ),
                            const SizedBox(
                              width: 16,
                            ),
                            Image.asset(
                              "assets/images/grown.png",
                              width: 24,
                              height: 24,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Text(datas[index]["dewasa"].toString()),
                            ),
                            const SizedBox(
                              width: 16,
                            ),
                            Image.asset(
                              "assets/images/child.png",
                              width: 24,
                              height: 24,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Text(datas[index]["anak"].toString()),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: const Color(0xFF01A7CC),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 12, vertical: 8),
                            child: Text(
                              "Aktif hingga 30 Oktober 2022, Pukul 09:00 WIB",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text("Total Pembayaran"),
                            Text(datas[index]["total"].toString())
                          ],
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xFF01A7CC),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(6),
                                  ),
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 6),
                                ),
                                onPressed: () {},
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 12, vertical: 6),
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        "assets/images/scan-barcode.png",
                                        width: 18,
                                        height: 18,
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(left: 8),
                                        child: Text(
                                          'QR Kendaraan',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xFF01A7CC),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(6),
                                  ),
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 6),
                                ),
                                onPressed: () {},
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 12, vertical: 6),
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        "assets/images/scan-barcode.png",
                                        width: 18,
                                        height: 18,
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(left: 8),
                                        child: Text(
                                          'QR Pengunjung',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                  if (datas.length > 1)
                    Divider(
                      color: Colors.grey[300],
                      height: 1,
                    ),
                ],
              ),
            ),
          ),
          Padding(
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
        ],
      ),
    );
  }
}
