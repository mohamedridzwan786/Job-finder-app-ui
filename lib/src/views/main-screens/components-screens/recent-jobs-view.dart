import 'package:flutter/material.dart';
import 'package:aureus/src/models/job.dart';
import 'package:aureus/src/Widget/jobsWidget.dart';

class RecentJobs extends StatefulWidget {
  const RecentJobs({Key? key}) : super(key: key);

  @override
  State<RecentJobs> createState() => _RecentJobsState();
}

class _RecentJobsState extends State<RecentJobs> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.transparent,
        body: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: JobModel.jobs.length,
            itemBuilder: (context, index) {
              return JobWidget(item: JobModel.jobs[index]);
            }),
      ),
    );
  }
}
