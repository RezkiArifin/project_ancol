import 'package:flutter/material.dart';

import 'menu_widget.dart';

class TabWidget extends StatefulWidget {
  const TabWidget({super.key});

  @override
  State<TabWidget> createState() => _TabWidgetState();
}

class _TabWidgetState extends State<TabWidget> {
  List<MenuModel> menu = [
    MenuModel(
        image: "assets/icon/jb-land_icon.png", label: "Jakarta bird\nland"),
    MenuModel(image: "assets/icon/ancol_icon.png", label: "Ancol"),
    MenuModel(image: "assets/icon/dufan_icon.png", label: "Dufan"),
    MenuModel(image: "assets/icon/sea-world_icon.png", label: "Seaworld"),
    MenuModel(image: "assets/icon/atlantis_icon.png", label: "Atlantis"),
    MenuModel(image: "assets/icon/samudra_icon.png", label: "Samudra"),
    MenuModel(image: "assets/icon/eco_icon.png", label: "Allianz\nEcopark"),
    MenuModel(image: "assets/icon/pasar-seni_icon.png", label: "Pasar Seni"),
    MenuModel(image: "assets/icon/fauna_icon.png", label: "Faunaland"),
    MenuModel(image: "assets/icon/duyung_icon.png", label: "Putri\nDuyung"),
    MenuModel(
        image: "assets/icon/bidadari_icon.png", label: "Bidadari\nIsland"),
    MenuModel(image: "assets/icon/gondola_icon.png", label: "Gondola"),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: DefaultTabController(
        length: 4,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            TabBar(tabs: [
              Tab(
                child: Image.asset(
                  "assets/icon/rekreasi_icon.png",
                  width: 50,
                  height: 50,
                ),
              ),
              Tab(
                child: Image.asset(
                  "assets/icon/fasilitas_icon.png",
                  width: 50,
                  height: 50,
                ),
              ),
              Tab(
                child: Image.asset(
                  "assets/icon/restoran_icon.png",
                  width: 50,
                  height: 50,
                ),
              ),
              Tab(
                child: Image.asset(
                  "assets/icon/hotel_icon.png",
                  width: 50,
                  height: 50,
                ),
              ),
            ]),
            SizedBox(
              //Add this to give height
              width: MediaQuery.of(context).size.width,
              height: 350,
              child: TabBarView(children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 15),
                      child: Text(
                        "Rekreasi",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 12),
                      ),
                    ),
                    GridView.builder(
                      shrinkWrap: true,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4,
                      ),
                      itemCount: menu.length,
                      itemBuilder: (context, index) => ListMenuWidget(
                        image: menu[index].image!,
                        label: menu[index].label!,
                      ),
                    ),
                  ],
                ),
                Container(
                  child: Text("Articles Body"),
                ),
                Container(
                  child: Text("User Body"),
                ),
                Container(
                  child: Text("User Body"),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}

class MenuModel {
  String? image;
  String? label;

  MenuModel({
    this.image,
    this.label,
  });
}
