// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../screens/tiket_saya_screen.dart';

class RiwayatScreen extends StatefulWidget {
  const RiwayatScreen({
    Key? key,
    required this.datas,
  }) : super(key: key);

  final List<TiketModel> datas;

  @override
  State<RiwayatScreen> createState() => _RiwayatScreenState();
}

class _RiwayatScreenState extends State<RiwayatScreen> {
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
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(widget.datas[index].namaTiket.toString()),
                                const SizedBox(
                                  height: 8,
                                ),
                                Text(widget.datas[index].waktu.toString(),
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
                                Text(widget.datas[index].total.toString(),
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
                          color: (widget.datas[index].status == "Sudah Bayar")
                              ? const Color(0xFFE8FAFB)
                              : (widget.datas[index].status == "Belum Bayar")
                                  ? const Color(0xffFFF7E8)
                                  : (widget.datas[index].status == "Dibatalkan")
                                      ? const Color(0xffFFF4F2)
                                      : const Color(0xFFE8FAFB),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 12, vertical: 8),
                          child: Text(
                            widget.datas[index].status.toString(),
                            style: TextStyle(
                              color:
                                  (widget.datas[index].status == "Sudah Bayar")
                                      ? const Color(0xFF01A7CC)
                                      : (widget.datas[index].status ==
                                              "Belum Bayar")
                                          ? const Color(0xffFAAD14)
                                          : (widget.datas[index].status ==
                                                  "Dibatalkan")
                                              ? const Color(0xffCB3A31)
                                              : const Color(0xFF01A7CC),
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
                if (widget.datas.length > 1)
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
