import 'package:flutter/material.dart';
import 'package:aureus/src/models/job.dart';
import 'package:aureus/src/Widget/jobsWidget.dart';

class AppliedJobs extends StatefulWidget {
  const AppliedJobs({Key? key}) : super(key: key);

  @override
  State<AppliedJobs> createState() => _RecentJobsState();
}

class _RecentJobsState extends State<AppliedJobs> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.transparent,
        body: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: AppliedJobModel.jobs.length,
            itemBuilder: (context, index) {
              return JobWidget(item: AppliedJobModel.jobs[index]);
            }),
      ),
    );
  }
}
