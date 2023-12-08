import 'package:flutter/material.dart';

class ListMenuWidget extends StatelessWidget {
  final String image;
  final String label;
  const ListMenuWidget({
    super.key,
    required this.image,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(6),
              boxShadow: const [
                BoxShadow(
                  offset: Offset(0, 4),
                  color: Colors.black26,
                  blurRadius: 6,
                  spreadRadius: 1,
                ),
              ],
              image:
                  DecorationImage(fit: BoxFit.fill, image: AssetImage(image))),
          // child: Image.asset(image, fit: BoxFit.fill),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          label,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 10,
            color: Color(0xff01A7CC),
          ),
        )
      ],
    );
  }
}
