import 'package:flutter/material.dart';

class JobViewPage extends StatefulWidget {
  const JobViewPage({super.key});

  @override
  State<JobViewPage> createState() => _JobViewPageState();
}

class _JobViewPageState extends State<JobViewPage> {
  final tabbutton = ["Description", "Company", "Reviews"];
  int tabIndex = 0;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Column(
        children: [
          Container(
            height: 260,
            width: size.width,
            decoration: const BoxDecoration(
                image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                  "https://freerangestock.com/sample/74590/job-interview--illustration-with-copyspace.jpg"),
            )),
            child: Stack(
              children: [
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      backgroundColor: Colors.black.withOpacity(0.5),
                      child: const Icon(
                        Icons.arrow_back,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            width: size.width,
            height: 150,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                )),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Senior Software Enginnering",
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Row(
                    children: [
                      const Text(
                        "LKR 80000 Per Month",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Container(
                        padding: const EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(9),
                        ),
                        child: const Text(
                          "Full time",
                          style: TextStyle(color: Colors.black),
                        ),
                      )
                    ],
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      const CircleAvatar(
                        radius: 20,
                        backgroundImage: NetworkImage(
                            "https://static.vecteezy.com/system/resources/previews/023/986/921/original/tiktok-logo-tiktok-logo-transparent-tiktok-icon-transparent-free-free-png.png"),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "TikTok",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Colombo",
                            style: TextStyle(
                              color: Colors.grey.shade900,
                              fontSize: 14,
                              fontWeight: FontWeight.w300,
                            ),
                          )
                        ],
                      ),
                      const Spacer(),
                      const Text(
                        "4 Days Left",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: tabbutton.map((e) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      tabIndex = tabbutton.indexOf(e);
                    });
                  },
                  child: Chip(
                    backgroundColor: tabIndex == tabbutton.indexOf(e)
                        ? Colors.black
                        : Colors.white,
                    label: Text(
                      e,
                      style: TextStyle(
                        color: tabIndex == tabbutton.indexOf(e)
                            ? Colors.white
                            : Colors.black,
                      ),
                    ),
                  ),
                );
              }).toList()),
          tabIndex == 0
              ? Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 20,
                  ),
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    height: 170,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Text(
                        "Majed is the all-time top scorer of the Saudi League with 189 goals and is also Al-Nassr's all-time top scorer with 260 goals. Majed Abdullah announced his retirement on 12 April 1998 following Al-Nassr's win in the 1998 Asian Cup Winner's Cup in front of 70,000 fans in Riyadh."),
                  ),
                )
              : tabIndex == 1
                  ? const Text("Company")
                  : const Text("Review")
        ],
      ),
    );
  }
}
