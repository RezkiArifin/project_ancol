import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../main.dart';
import '../../widget/global/text_field_global_widget.dart';
import 'lupa_password_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 46),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Image.asset(
                    "assets/images/logo-ancol-footer 2.png",
                    width: 150,
                    height: 58,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 33),
                  child: Image.asset(
                    "assets/images/login_images.png",
                    width: double.infinity,
                    height: 216,
                  ),
                ),
                const Center(
                  child: Text(
                    "Masuk ke Akun Anda",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(24),
                  child: TextFieldWidget(
                    height: 46,
                    title: "Alamat Email",
                    isValidTextField: true,
                    errorMessage: "",
                    hintText: "Masukkan Email",
                    decoration: InputDecoration(),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 24, left: 24, right: 24),
                  child: TextFieldWidget(
                    height: 46,
                    title: "Password",
                    isValidTextField: true,
                    errorMessage: "",
                    hintText: "Masukkan Password",
                    suffixIconWidget: Icon(CupertinoIcons.eye),
                    decoration: InputDecoration(),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const LupaPasswordScreen(),
                            ),
                          );
                        },
                        child: const Text(
                          "Lupa password?",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 10,
                              color: Color(0xff01A7CC)),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: SizedBox(
                    width: double.infinity,
                    height: 42,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color.fromARGB(255, 12, 168, 203),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 6),
                      ),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) =>
                                const BottomNavigationBarExample()));
                      },
                      child: const Text(
                        'Masuk',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 12),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Belum punya akun?",
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 12),
                    ),
                    Text(
                      "Daftar",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: Color(0xff01A7CC)),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
