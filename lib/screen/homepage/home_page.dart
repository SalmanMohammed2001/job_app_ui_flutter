import 'package:flutter/material.dart';
import 'package:job_app_ui/screen/homepage/widget/app_bar.dart';
import 'package:job_app_ui/screen/homepage/widget/category_bar.dart';
import 'package:job_app_ui/screen/homepage/widget/greetings_text.dart';
import 'package:job_app_ui/screen/homepage/widget/popular_row.dart';
import 'package:job_app_ui/screen/homepage/widget/recent_column.dart';
import 'package:job_app_ui/screen/homepage/widget/search_bar.dart';
import 'package:job_app_ui/service/get_deta.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  GetData data = GetData();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomAppBar(),
                const SizedBox(
                  height: 10,
                ),
                const greetingsText(),
                const SizedBox(
                  height: 10,
                ),
                CustomSearchBar(size: size),
                const SizedBox(
                  height: 10,
                ),
                const CategoryBar(
                  title: "Popular Jobs",
                ),
                const SizedBox(
                  height: 10,
                ),
                PopularRow(data: data, size: size),
                const SizedBox(
                  height: 15,
                ),
                const CategoryBar(title: "Recent Jobs"),
                const SizedBox(
                  height: 15,
                ),
                RecentColumn(data: data)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
