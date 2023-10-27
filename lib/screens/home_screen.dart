import 'package:flutter/material.dart';
import '../widget/tab_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 26),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      "assets/logo-ancol-footer 2.png",
                      width: 132,
                      height: 34,
                    ),
                    const SizedBox(
                      height: 38,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xff01A7CC),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(11),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: const Color(0xffFFFFFF),
                                boxShadow: const [
                                  BoxShadow(
                                      color: Colors.black26,
                                      spreadRadius: 1,
                                      blurRadius: 6,
                                      offset: Offset(0, 4)),
                                ],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 6),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Image.asset(
                                          "assets/icon/wallet-icon.png",
                                          width: 14,
                                          height: 17,
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.only(left: 10),
                                          child: Text(
                                            "JakOne Pay",
                                            style: TextStyle(
                                              color: Color(0xffE41313),
                                              fontSize: 10,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      children: [
                                        const Padding(
                                          padding: EdgeInsets.only(right: 20),
                                          child: Text("**********"),
                                        ),
                                        Image.asset(
                                          "assets/icon/eye-close_icon.png",
                                          width: 10,
                                          height: 10,
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: const Color(0xffFFFFFF),
                                boxShadow: const [
                                  BoxShadow(
                                      color: Colors.black26,
                                      spreadRadius: 1,
                                      blurRadius: 6,
                                      offset: Offset(0, 4)),
                                ],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 10),
                                child: Column(
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Image.asset(
                                          "assets/icon/dashboard_icon.png",
                                          width: 14,
                                          height: 17,
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.only(left: 10),
                                          child: Text(
                                            "Status",
                                            style: TextStyle(
                                              fontSize: 10,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    const Row(
                                      children: [
                                        Text(
                                          "Nonaktif",
                                          style: TextStyle(
                                            fontSize: 10,
                                            color: Color(0xffE41313),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 15,
                                        ),
                                        Text(
                                          "Aktivasi",
                                          style: TextStyle(
                                            fontSize: 10,
                                            color: Color(0xffE41313),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 17,
                    ),
                    const TabWidget(),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 184,
                decoration: const BoxDecoration(color: Color(0xff01A7CC)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
