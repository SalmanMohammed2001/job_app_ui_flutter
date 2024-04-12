import 'package:flutter/material.dart';
import 'package:job_app_ui/screen/homepage/widget/app_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(),
              SizedBox(
                height: 10,
              ),
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
