import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:tiket_saya/screens/konfirmasi_screen.dart';

class BeliTiketScreen extends StatefulWidget {
  const BeliTiketScreen({super.key});

  @override
  State<BeliTiketScreen> createState() => _BeliTiketScreenState();
}

class _BeliTiketScreenState extends State<BeliTiketScreen> {
  String _selectedDate = '';
  String _dateCount = '';
  String _range = '';
  String _rangeCount = '';

  int tiketDewasa = 0;
  int tiketAnak = 0;
  int tiketMobil = 0;

  void _incrementCounterDewasa() {
    setState(() {
      tiketDewasa++;
    });
  }

  void _decrementCounterDewasa() {
    setState(() {
      if (tiketDewasa > 0) {
        tiketDewasa--;
      }
    });
  }

  void _incrementCounterAnak() {
    setState(() {
      tiketAnak++;
    });
  }

  void _decrementCounterAnak() {
    setState(() {
      if (tiketAnak > 0) {
        tiketAnak--;
      }
    });
  }

  void _incrementCounterMobil() {
    setState(() {
      tiketMobil++;
    });
  }

  void _decrementCounterMobil() {
    setState(() {
      if (tiketMobil > 0) {
        tiketMobil--;
      }
    });
  }

  void _onSelectionChanged(DateRangePickerSelectionChangedArgs args) {
    setState(() {
      if (args.value is PickerDateRange) {
        _range = '${DateFormat('dd/MM/yyyy').format(args.value.startDate)} -'
            // ignore: lines_longer_than_80_chars
            ' ${DateFormat('dd/MM/yyyy').format(args.value.endDate ?? args.value.startDate)}';
      } else if (args.value is DateTime) {
        _selectedDate = args.value.toString();
      } else if (args.value is List<DateTime>) {
        _dateCount = args.value.length.toString();
      } else {
        _rangeCount = args.value.length.toString();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text('Beli Tiket'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                width: double.infinity,
                height: 56,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white),
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
                  child: Text(
                    "Pilih Tanggal Kunjungan",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Container(
                width: double.infinity,
                height: 149,
                color: Colors.white,
                child: Stack(
                  children: <Widget>[
                    // Positioned(
                    //   left: 0,
                    //   right: 0,
                    //   top: 0,
                    //   height: 80,
                    //   child: Column(
                    //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    //     mainAxisSize: MainAxisSize.min,
                    //     crossAxisAlignment: CrossAxisAlignment.start,
                    //     children: <Widget>[
                    //       Text('Selected date: $_selectedDate'),
                    //       Text('Selected date count: $_dateCount'),
                    //       Text('Selected range: $_range'),
                    //       Text('Selected ranges count: $_rangeCount')
                    //     ],
                    //   ),
                    // ),
                    Positioned(
                      left: 0,
                      top: 0,
                      right: 0,
                      bottom: 0,
                      child: SfDateRangePicker(
                        onSelectionChanged: _onSelectionChanged,
                        selectionMode: DateRangePickerSelectionMode.range,
                        initialSelectedRange: PickerDateRange(
                            DateTime.now().subtract(const Duration(days: 4)),
                            DateTime.now().add(const Duration(days: 3))),
                      ),
                    )
                  ],
                )),
            Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Tiket Pengunjung",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: Container(
                      height: 140,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 16, horizontal: 24),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
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
                                const Text("Tiket Dewasa"),
                              ],
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(vertical: 16),
                              child: Text(
                                "Pengunjung usia 12 tahun keatas",
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w400),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text("Rp.50.000"),
                                Row(
                                  children: [
                                    GestureDetector(
                                      onTap: () => _decrementCounterDewasa(),
                                      child: Container(
                                        height: 28,
                                        width: 28,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(6),
                                          color: const Color(0xffF5F5F5),
                                        ),
                                        child: const Center(child: Text("-")),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 12),
                                      child: Text(tiketDewasa.toString()),
                                    ),
                                    GestureDetector(
                                      onTap: () => _incrementCounterDewasa(),
                                      child: Container(
                                        height: 28,
                                        width: 28,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(6),
                                          color: const Color(0xff5CDFFC),
                                        ),
                                        child: const Center(child: Text("+")),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 16),
                    child: Container(
                      height: 140,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 16, horizontal: 24),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  "assets/images/child.png",
                                  width: 24,
                                  height: 24,
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                const Text("Tiket Anak"),
                              ],
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(vertical: 16),
                              child: Text(
                                "Pengunjung usia 12 tahun kebawah",
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w400),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text("Rp.30.000"),
                                Row(
                                  children: [
                                    GestureDetector(
                                      onTap: () => _decrementCounterAnak(),
                                      child: Container(
                                        height: 28,
                                        width: 28,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(6),
                                          color: const Color(0xffF5F5F5),
                                        ),
                                        child: const Center(child: Text("-")),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 12),
                                      child: Text(tiketAnak.toString()),
                                    ),
                                    GestureDetector(
                                      onTap: () => _incrementCounterAnak(),
                                      child: Container(
                                        height: 28,
                                        width: 28,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(6),
                                          color: const Color(0xff5CDFFC),
                                        ),
                                        child: const Center(child: Text("+")),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  const Text(
                    "Tiket Kendaraan",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: Container(
                      height: 140,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 16, horizontal: 24),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  "assets/images/car.png",
                                  width: 24,
                                  height: 24,
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                const Text("Tiket Mobil"),
                              ],
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(vertical: 16),
                              child: Text(
                                "Pengunjung dengan kendaraan mobil",
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w400),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text("Rp.15.000"),
                                Row(
                                  children: [
                                    GestureDetector(
                                      onTap: () => _decrementCounterMobil(),
                                      child: Container(
                                        height: 28,
                                        width: 28,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(6),
                                          color: const Color(0xffF5F5F5),
                                        ),
                                        child: const Center(child: Text("-")),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 12),
                                      child: Text(tiketMobil.toString()),
                                    ),
                                    GestureDetector(
                                      onTap: () => _incrementCounterMobil(),
                                      child: Container(
                                        height: 28,
                                        width: 28,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(6),
                                          color: const Color(0xff5CDFFC),
                                        ),
                                        child: const Center(child: Text("+")),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            Container(
              height: 72,
              width: double.infinity,
              color: Colors.white,
              child: Center(
                child: SizedBox(
                  width: 372,
                  height: 40,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 12, 168, 203),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6),
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 6),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => KonfirmasiPesananScreen(),
                        ),
                      );
                    },
                    child: const Text(
                      'Beli Tiket',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
