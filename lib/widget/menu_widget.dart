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
          // width: 40,
          // height: 40,
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
          ),
          child: Image.asset(
            image,
            width: 50,
            height: 50,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          label,
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
