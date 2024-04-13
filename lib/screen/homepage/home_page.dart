import 'package:flutter/material.dart';
import 'package:job_app_ui/screen/homepage/widget/app_bar.dart';
import 'package:job_app_ui/screen/homepage/widget/greetings_text.dart';
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
                SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(data.getJobData().length, (index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: size.width * 0.75,
                          height: size.width * 0.4,
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Colors.grey.shade900,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    data.getJobData()[index].title,
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  const Spacer(),
                                  Icon(
                                    Icons.book_online,
                                    color: Colors.grey.shade700,
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    data.getJobData()[index].salary,
                                    style: const TextStyle(
                                      color: Colors.grey,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  Container(
                                    padding: const EdgeInsets.all(4),
                                    decoration: BoxDecoration(
                                      color: Colors.grey,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Text(
                                      data.getJobData()[index].type,
                                      style:
                                          const TextStyle(color: Colors.white),
                                    ),
                                  )
                                ],
                              ),
                              const Spacer(),
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: 25,
                                    backgroundImage: NetworkImage(
                                        data.getJobData()[index].logo),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        data.getJobData()[index].companyName,
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        data.getJobData()[index].city,
                                        style: TextStyle(
                                          color: Colors.grey.shade200,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w300,
                                        ),
                                      )
                                    ],
                                  ),
                                  const Spacer(),
                                  Text(
                                    data.getJobData()[index].time,
                                    style: const TextStyle(
                                      color: Colors.red,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      );
                    }),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const CategoryBar(title: "Recent Jobs"),
                const SizedBox(
                  height: 15,
                ),
                Column(
                    children: List.generate(data.getJobData().length, (index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 80,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: ListTile(
                        leading: CircleAvatar(
                          radius: 25,
                          backgroundImage:
                              NetworkImage(data.getJobData()[index].logo),
                        ),
                        title: Text(data.getJobData()[index].title),
                        subtitle: Text(
                          "${data.getJobData()[index].companyName} - ${data.getJobData()[index].type}",
                          style: const TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        trailing: Text(data.getJobData()[index].time),
                      ),
                    ),
                  );
                }))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

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
