import 'package:flutter/material.dart';

class CategoryBar extends StatelessWidget {
  final String title;
  final String subTie;
  const CategoryBar({super.key, required this.title, this.subTie = 'Show All'});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 21,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          subTie,
          style: const TextStyle(
            fontSize: 17,
          ),
        ),
      ],
    );
  }
}
