import 'package:flutter/material.dart';

class greetingsText extends StatelessWidget {
  const greetingsText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Good Morning Alex",
          style: TextStyle(color: Colors.grey, fontSize: 17),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "Find Your\nCreative Job",
          style: TextStyle(
            fontSize: 32,
            height: 0.9,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
