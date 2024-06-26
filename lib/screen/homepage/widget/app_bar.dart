import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade200),
              color: Colors.white,
              borderRadius: BorderRadius.circular(15)),
          child: const Icon(Icons.menu),
        ),
        const Text(
          "Creative Jobs",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
        ),
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
              color: Colors.grey,
              image: const DecorationImage(
                  image: NetworkImage(
                      "https://newprofilepic.photo-cdn.net//assets/images/article/profile.jpg?90af0c8")),
              borderRadius: BorderRadius.circular(15)),
        ),
      ],
    );
  }
}
