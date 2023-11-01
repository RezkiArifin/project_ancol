import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text('Akun'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 24, right: 24, top: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              children: [
                SizedBox(
                  width: 60,
                  child: Stack(
                    children: <Widget>[
                      SizedBox(
                        width: 60,
                        height: 60,
                        child: CircleAvatar(
                          radius: 55,
                          backgroundImage:
                              //pake foto dari api(?)
                              AssetImage("assets/images/profile_images.png"),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "John Doe",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w600),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 8),
                        child: Text(
                          "jenyw@mail.com",
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w400),
                        ),
                      ),
                      Text(
                        "080000000",
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                )
              ],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 24),
              child: Text(
                "Setting",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 97, 210, 236)),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Row(
                children: [
                  Image.asset(
                    "assets/icon/user_icon.png",
                    width: 24,
                    height: 24,
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  const Text("Pengaturan Akun"),
                  const SizedBox(
                    width: 178,
                  ),
                  Image.asset(
                    "assets/icon/arrow-right_icon.png",
                    width: 24,
                    height: 24,
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            GestureDetector(
              onTap: () {},
              child: Row(
                children: [
                  Image.asset(
                    "assets/icon/translate_icon.png",
                    width: 24,
                    height: 24,
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  const Text("Bahasa"),
                  const SizedBox(
                    width: 245,
                  ),
                  Image.asset(
                    "assets/icon/arrow-right_icon.png",
                    width: 24,
                    height: 24,
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 24),
              child: Text(
                "Tentang",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 97, 210, 236)),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Row(
                children: [
                  Image.asset(
                    "assets/icon/messages_icon.png",
                    width: 24,
                    height: 24,
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  const Text("Hubungi Kami"),
                  const SizedBox(
                    width: 195,
                  ),
                  Image.asset(
                    "assets/icon/arrow-right_icon.png",
                    width: 24,
                    height: 24,
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            GestureDetector(
              onTap: () {},
              child: Row(
                children: [
                  Image.asset(
                    "assets/icon/sk_icon.png",
                    width: 24,
                    height: 24,
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  const Text("Syarat & Ketentuan"),
                  const SizedBox(
                    width: 160,
                  ),
                  Image.asset(
                    "assets/icon/arrow-right_icon.png",
                    width: 24,
                    height: 24,
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            GestureDetector(
              onTap: () {},
              child: Row(
                children: [
                  Image.asset(
                    "assets/icon/shield_icon.png",
                    width: 24,
                    height: 24,
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  const Text("Kebijakan"),
                  const SizedBox(
                    width: 225,
                  ),
                  Image.asset(
                    "assets/icon/arrow-right_icon.png",
                    width: 24,
                    height: 24,
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            GestureDetector(
              onTap: () {},
              child: Row(
                children: [
                  Image.asset(
                    "assets/icon/logout_icon.png",
                    width: 24,
                    height: 24,
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  const Text("Keluar"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
