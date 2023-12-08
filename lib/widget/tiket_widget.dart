// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:tiket_saya/widget/global/qris_global_widget.dart';

import '../screens/detail_tiket_screen.dart';
import '../screens/tiket_saya_screen.dart';

class TiketWidget extends StatefulWidget {
  const TiketWidget({
    Key? key,
    required this.datas,
  }) : super(key: key);

  final List<TiketModel> datas;

  @override
  State<TiketWidget> createState() => _TiketWidgetState();
}

class _TiketWidgetState extends State<TiketWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24),
      child: Stack(
        children: <Widget>[
          Wrap(
            children: List.generate(
              widget.datas.length,
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
                              InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              DetailTiketScreen(
                                            datas: widget.datas[index],
                                          ),
                                        ));
                                  },
                                  child: Text(
                                      widget.datas[index].pesanan.toString())),
                              Text(widget.datas[index].waktu.toString())
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
                              child: Text(widget.datas[index].mobil.toString()),
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
                              child:
                                  Text(widget.datas[index].dewasa.toString()),
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
                              child: Text(widget.datas[index].anak.toString()),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        (widget.datas[index].pembayaran == "Kadaluarsa")
                            ? Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6),
                                    color: const Color(0xffFFF4F2)),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 12, vertical: 8),
                                  child: Text(
                                    widget.datas[index].pembayaran.toString(),
                                    style: const TextStyle(
                                        color: Color(0xffCB3A31)),
                                  ),
                                ),
                              )
                            : Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  color: const Color(0xFF01A7CC),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 12, vertical: 8),
                                  child: Text(
                                    "Aktif hingga ${widget.datas[index].waktu.toString()}, Pukul 09:00 WIB",
                                    style: const TextStyle(
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
                            Text(widget.datas[index].total.toString())
                          ],
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        (widget.datas[index].status == "Dibatalkan")
                            ? GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => DetailTiketScreen(
                                        datas: widget.datas[index],
                                      ),
                                    ),
                                  );
                                },
                                child: Container(
                                  width: double.infinity,
                                  height: 42,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6),
                                    color: const Color(0XFFEEF7EE),
                                  ),
                                  child: const Center(
                                    child: Text(
                                      "Detail",
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xff01A7CC)),
                                    ),
                                  ),
                                ),
                              )
                            : Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor:
                                            const Color(0xFF01A7CC),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(6),
                                        ),
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 6),
                                      ),
                                      onPressed: () {
                                        Navigator.of(context).push(
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const QrisWidget(
                                              tiket: "Tiket Kendaraan",
                                              title: Text("QR Kendaraan"),
                                            ),
                                          ),
                                        );
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10, vertical: 6),
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
                                                style: TextStyle(
                                                    color: Colors.white),
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
                                        backgroundColor:
                                            const Color(0xFF01A7CC),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(6),
                                        ),
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 6),
                                      ),
                                      onPressed: () {
                                        Navigator.of(context).push(
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const QrisWidget(
                                              tiket: "Tiket Pengunjung",
                                              title: Text("QR Pengunjung"),
                                            ),
                                          ),
                                        );
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10, vertical: 6),
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
                                                style: TextStyle(
                                                    color: Colors.white),
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
                  if (widget.datas.length > 1)
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
