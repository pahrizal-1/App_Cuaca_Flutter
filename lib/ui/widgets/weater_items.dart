import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WeaterItem extends StatelessWidget {
  final int value;
  final String unit;
  final String imageUrl;

  const WeaterItem({
    Key? key,
    required this.value,
    required this.unit,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Image.asset(imageUrl),
        ),
        const SizedBox(
          height: 10,
        ),
        // ignore: prefer_const_constructors
        Text(
          value.toString() + unit,
          // ignore: prefer_const_constructors
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        )
      ],
    );
  }
}
