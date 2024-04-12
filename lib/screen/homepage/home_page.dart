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
      backgroundColor: Colors.grey.shade300,
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.all(12.0),
          child: CustomAppBar(),
        ),
      ),
    );
  }
}
