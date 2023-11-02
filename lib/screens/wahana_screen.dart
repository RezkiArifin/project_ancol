import 'package:flutter/material.dart';
import 'package:tiket_saya/screens/wahana_deskripsi_screen.dart';

class WahanaScreen extends StatefulWidget {
  const WahanaScreen({super.key});

  @override
  State<WahanaScreen> createState() => _WahanaScreenState();
}

class _WahanaScreenState extends State<WahanaScreen> {
  List<WahanaModel> wahana = [
    WahanaModel(
        image: "assets/images/simulator_images.png",
        name: "Mowgli's Jungle Race 4D Simulator",
        description:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fermentum lacinia risus sit elit. Cras arcu integer natoque urna sit pellentesque. Pulvinar fermentum porttitor",
        location: "Samudra Ancol",
        tiketHarga: "Dewasa: Rp. 50.000\nAnak-anak: Rp.30.000",
        jadwal:
            "Weekday : 13.00, 15.00, 17.00\nWeekend : 11.00, 12.00, 13.00, 14.00, 15.00, 16.00, 17.00"),
    WahanaModel(
        image: "assets/images/antesa_images.png",
        name: "Antasena Tunel",
        description:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fermentum lacinia risus sit elit. Cras arcu integer natoque urna sit pellentesque. Pulvinar fermentum porttitor",
        location: "Samudra Ancol",
        tiketHarga: "Dewasa: Rp. 50.000\nAnak-anak: Rp.30.000",
        jadwal:
            "Weekday : 13.00, 15.00, 17.00\nWeekend : 11.00, 12.00, 13.00, 14.00, 15.00, 16.00, 17.00"),
    WahanaModel(
        image: "assets/images/asthatirta_images.png",
        name: "asthatirta",
        description:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fermentum lacinia risus sit elit. Cras arcu integer natoque urna sit pellentesque. Pulvinar fermentum porttitor",
        location: "Samudra Ancol",
        tiketHarga: "Dewasa: Rp. 50.000\nAnak-anak: Rp.30.000",
        jadwal:
            "Weekday : 13.00, 15.00, 17.00\nWeekend : 11.00, 12.00, 13.00, 14.00, 15.00, 16.00, 17.00"),
    WahanaModel(
        image: "assets/images/mola_images.png",
        name: "Mola Mola",
        description:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fermentum lacinia risus sit elit. Cras arcu integer natoque urna sit pellentesque. Pulvinar fermentum porttitor",
        location: "Samudra Ancol",
        tiketHarga: "Dewasa: Rp. 50.000\nAnak-anak: Rp.30.000",
        jadwal:
            "Weekday : 13.00, 15.00, 17.00\nWeekend : 11.00, 12.00, 13.00, 14.00, 15.00, 16.00, 17.00"),
    WahanaModel(
        image: "assets/images/lumba-lumba_images.png",
        name: "lumba-lumba",
        description:
            "Nikmati sensai terombang-ambing di lautan ala Kolam Ombak, Atlantis Water Adventures!",
        location: "Samudra Ancol",
        tiketHarga: "Dewasa: Rp. 50.000\nAnak-anak: Rp.30.000",
        jadwal:
            "Weekday : 13.00, 15.00, 17.00\nWeekend : 11.00, 12.00, 13.00, 14.00, 15.00, 16.00, 17.00"),
    WahanaModel(
        image: "assets/images/poseidon1_images.png",
        name: "Poseidon Wave",
        description:
            "Nikmati sensai terombang-ambing di lautan ala Kolam Ombak, Atlantis Water Adventures!",
        location: "Samudra Ancol",
        tiketHarga: "Dewasa: Rp. 50.000\nAnak-anak: Rp.30.000",
        jadwal:
            "Weekday : 13.00, 15.00, 17.00\nWeekend : 11.00, 12.00, 13.00, 14.00, 15.00, 16.00, 17.00"),
    WahanaModel(
        image: "assets/images/main-aqua_images.png",
        name: "Main Aquarium",
        description:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fermentum lacinia risus sit elit. Cras arcu integer natoque urna sit pellentesque. Pulvinar fermentum porttitor",
        location: "Samudra Ancol",
        tiketHarga: "Dewasa: Rp. 50.000\nAnak-anak: Rp.30.000",
        jadwal:
            "Weekday : 13.00, 15.00, 17.00\nWeekend : 11.00, 12.00, 13.00, 14.00, 15.00, 16.00, 17.00"),
    WahanaModel(
        image: "assets/images/ice-age_images.png",
        name: "Ice Age",
        description:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fermentum lacinia risus sit elit. Cras arcu integer natoque urna sit pellentesque. Pulvinar fermentum porttitor",
        location: "Samudra Ancol",
        tiketHarga: "Dewasa: Rp. 50.000\nAnak-anak: Rp.30.000",
        jadwal:
            "Weekday : 13.00, 15.00, 17.00\nWeekend : 11.00, 12.00, 13.00, 14.00, 15.00, 16.00, 17.00"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: const Text('Wahana'),
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
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 27),
          child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                crossAxisCount: 2,
              ),
              itemCount: wahana.length,
              itemBuilder: (BuildContext ctx, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => WahanaDeskripsi(
                                  wahana: wahana[index],
                                )));
                    // _showWahanaScreen(context, wahana[index]);
                  },
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(6),
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage(wahana[index].image),
                      ),
                    ),
                  ),
                );
              }),
        ));
  }
}

class WahanaModel {
  final String image;
  final String? name;
  final String? description;
  final String? location;
  final String? tiketHarga;
  final String? jadwal;

  WahanaModel({
    required this.image,
    this.name,
    this.description,
    this.location,
    this.tiketHarga,
    this.jadwal,
  });
}
