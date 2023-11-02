import 'package:flutter/material.dart';
import 'package:tiket_saya/screens/promo_deskripsi.dart';

class TiketPromo extends StatefulWidget {
  const TiketPromo({super.key});

  @override
  State<TiketPromo> createState() => _TiketPromoState();
}

class _TiketPromoState extends State<TiketPromo> {
  List<PromoModel> promo = [
    PromoModel(
        image: "assets/images/mowgli_images.png",
        label: "Ada Wahana Baru di Dufan! Mowgli's Jungle Race 4D Simulator",
        date: "25 Mei 2023",
        description:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fermentum lacinia risus sit elit. Cras arcu integer natoque urna sit pellentesque. Pulvinar fermentum porttitor"),
    PromoModel(
        image: "assets/images/prewed_images.png",
        label: "Prewedding at Ancol Taman Impian",
        date: "25 Mei 2023",
        description:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fermentum lacinia risus sit elit. Cras arcu integer natoque urna sit pellentesque. Pulvinar fermentum porttitor"),
    PromoModel(
        image: "assets/images/fun-illusion_images.png",
        label:
            "Lihat Keajaiban Dufan di Fun Illusion Dufan Bersama Rocky Oktori & Yoko Ferostal",
        date: "25 Mei 2023",
        description:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fermentum lacinia risus sit elit. Cras arcu integer natoque urna sit pellentesque. Pulvinar fermentum porttitor"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text('Tiket & Promo'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
          child: Wrap(
            children: List.generate(
              promo.length,
              (index) => GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PromoDeskripsi(promo: promo[index]),
                    ),
                  );
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: double.infinity,
                      height: 160,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage(promo[index].image!),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      promo[index].label!,
                      style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 10,
                          color: Color.fromARGB(255, 97, 210, 236)),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      promo[index].date!,
                      style: const TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 12,
                          color: Color.fromARGB(255, 97, 210, 236)),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class PromoModel {
  String? image;
  String? label;
  String? date;
  String? description;

  PromoModel({this.image, this.label, this.date, this.description});
}
