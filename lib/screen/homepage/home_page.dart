import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
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
                "Find Jobs",
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
          ),
        ),
      ),
    );
  }
}
