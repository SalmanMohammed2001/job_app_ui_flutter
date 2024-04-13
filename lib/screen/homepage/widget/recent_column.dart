import 'package:flutter/material.dart';
import 'package:job_app_ui/service/get_deta.dart';

class RecentColumn extends StatelessWidget {
  const RecentColumn({
    super.key,
    required this.data,
  });

  final GetData data;

  @override
  Widget build(BuildContext context) {
    return Column(
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
              backgroundImage: NetworkImage(data.getJobData()[index].logo),
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
    }));
  }
}
